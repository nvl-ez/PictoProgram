package intermediateCode;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.LinkedList;
import java.util.TreeMap;

public class ThreeAddressCode {

    private BufferedWriter writer;

    private LinkedList<Instruction> code;
    private TreeMap<Integer, RowVar> varTable;
    private TreeMap<Integer, RowFun> funTable;
    private Function last = null;
    private int writeLoop = 0;

    public ThreeAddressCode() {
        code = new LinkedList();
        varTable = new TreeMap();
        funTable = new TreeMap();

        Variable.setThreeAddressCode(this);
        Function.setThreeAddressCode(this);

        try {
            writer = new BufferedWriter(new FileWriter("ThreeAddressCode.txt"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void put(Instruction instruction) {
        code.add(instruction);
    }

    public LinkedList<Instruction> getCode() {
        return code;
    }

    public TreeMap getVarTable() {
        return varTable;
    }

    public void addVariable(Variable var) {
        varTable.put(var.getId(), new RowVar(last != null ? last.getId() : -1, var, (var.getWords()), 0));
    }

    public void addFunction(Function fun) {
        funTable.put(fun.getId(), new RowFun(fun.getStart(), fun.getNParams(), 0, 0));
        last = fun;
    }

    public void recalculate() {
        for (RowFun rowFun : funTable.values()) {
            rowFun.wordsParam = 0;
            rowFun.wordsVars = 0;
        }

        for (int rowVar : varTable.keySet()) {
            if (!varTable.get(rowVar).var.isArg() && varTable.get(rowVar).idFun != -1) {
                RowFun rowFun = funTable.get(varTable.get(rowVar).idFun);
                rowFun.wordsVars += varTable.get(rowVar).words;
                varTable.get(rowVar).delta = -(rowFun.wordsVars + 8);
            } else if (varTable.get(rowVar).var.isArg() && varTable.get(rowVar).idFun != -1) {
                RowFun rowFun = funTable.get(varTable.get(rowVar).idFun);
                rowFun.wordsParam += varTable.get(rowVar).words;
                varTable.get(rowVar).delta = rowFun.wordsParam - 2;
            }
        }

        //Reservamos 4 bytes para el basepointer anterior
        for (RowFun rowFun : funTable.values()) {
            rowFun.wordsVars += 4;
        }

    }

    private class RowVar {

        int idFun;
        int words;
        int delta;
        Variable var;

        public RowVar(int idFun, Variable var, int words, int delta) {
            this.idFun = idFun;
            this.words = words;
            this.delta = delta;
            this.var = var;
        }
    }

    private class RowFun {

        Tag start;
        int nParams;
        int wordsVars;
        int wordsParam;

        public RowFun(Tag start, int nParams, int wordsVars, int wordsParam) {
            this.start = start;
            this.nParams = nParams;
            this.wordsVars = wordsVars;
            this.wordsParam = wordsParam;
        }
    }

    public void assemble() {
        for (Instruction instr : code) {
            try {
                writer.write(instr.toString() + "\n");
                writer.flush();
            } catch (IOException e) {
                System.out.println(e.getMessage());
            }
        }

        BufferedWriter assembly = null;
        try {
            assembly = new BufferedWriter(new FileWriter("assembly.x68"));

            int globalWords = 0;
            for (RowVar rowVar : varTable.values()) {
                if (rowVar.idFun == -1) {
                    assembly.write(rowVar.var.getName() + "\tDS.W " + rowVar.words + "\n");
                    globalWords += rowVar.words;
                }
            }

            assembly.write("\tORG \t$" + (globalWords) + "\nSTART:\n");
            assembly.write("\tMOVE.B #0, D1\n");
            assembly.write("\tMOVE.W #12, D0\n");
            assembly.write("\tTRAP #15\n");

            for (Instruction i : code) {
                switch (i.getOperation()) {
                    case COPY ->
                        copy(assembly, i);
                    case SUM ->
                        sum(assembly, i);
                    case SUB ->
                        sub(assembly, i);
                    case PROD ->
                        prod(assembly, i);
                    case DIV ->
                        div(assembly, i);
                    case MOD ->
                        mod(assembly, i);
                    case NEG ->
                        neg(assembly, i);
                    case AND ->
                        and(assembly, i);
                    case OR ->
                        or(assembly, i);
                    case IND_VAL ->
                        indVal(assembly, i);
                    case IND_ASS ->
                        indAss(assembly, i);
                    case SKIP ->
                        skip(assembly, i);
                    case GOTO ->
                        goTo(assembly, i);
                    case IFLT ->
                        ifLt(assembly, i);
                    case IFLE ->
                        ifLe(assembly, i);
                    case IFEQ ->
                        ifEq(assembly, i);
                    case IFGT ->
                        ifGt(assembly, i);
                    case IFGE ->
                        ifGe(assembly, i);
                    case IFNE ->
                        ifNe(assembly, i);
                    case PMB ->
                        pmb(assembly, i);
                    case CALL ->
                        call(assembly, i);
                    case RTN ->
                        rtn(assembly, i);
                    case INC ->
                        inc(assembly, i);
                    case PUT ->
                        put(assembly, i);
                    case POP ->
                        pop(assembly, i);
                    case HALT ->
                        halt(assembly, i);
                    case READ ->
                        read(assembly, i);
                    case WRITE ->
                        write(assembly, i);
                    case POS ->
                        pos(assembly, i);
                    default ->
                        throw new IllegalArgumentException("Unknown operation");
                }
            }

            assembly.write("\tEND START\n");
            assembly.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public void copy(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----COPY----\n");
        Variable destination = (Variable) i.getResult();
        //Obtener posicion de memoria en la que escribir, revisar si es local o global (A5)
        if (varTable.get(destination.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + destination.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(destination.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }

        //Escribir valor
        if (i.getValue() != null) {
            assembly.write("\tMOVE.W #" + i.getValue() + ", (A5)\n\n");
        } else {
            Variable origin = (Variable) i.getOperand1();
            if (origin == null) {
                System.out.println("null");
            }
            //Obtener posicion de memoria contenedora del valor, revisar si es local o global (A4)
            if (origin.getValue() != null) {
                assembly.write("\tMOVE.W #" + origin.getValue() + ", (A5)\n");
            } else {
                if (varTable.get(origin.getId()).idFun == -1) { //Es una variable global
                    assembly.write("\tLEA " + origin.getName() + ", A4\n");
                } else {
                    assembly.write("\tMOVE.L #" + varTable.get(origin.getId()).delta + ", A4\n");
                    assembly.write("\tADD.L A6, A4\n");
                }

                assembly.write("\tMOVE.W (A4), (A5)\n\n");
            }
        }
    }

    public void sum(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----SUM----\n");
        assembly.write("\tCLR.L D1\n");
        assembly.write("\tCLR.L D2\n");

        //Cargar operando 1 en D1
        Variable operand1 = (Variable) i.getOperand1();
        if (operand1.getValue() != null) {
            assembly.write("\tMOVE.W #" + operand1.getValue() + ", D1\n");
        } else {
            if (varTable.get(operand1.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + operand1.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(operand1.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D1\n");
        }

        //Cargar operando 2 en D2
        Variable operand2 = (Variable) i.getOperand2();
        if (operand2.getValue() != null) {
            assembly.write("\tMOVE.W #" + operand2.getValue() + ", D2\n");
        } else {
            if (varTable.get(operand2.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + operand2.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(operand2.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D2\n");
        }
        //Suma
        assembly.write("\tADD.W D1, D2\n");

        //Guardar valor en memoria
        Variable result = (Variable) i.getResult();
        if (varTable.get(result.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + result.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(result.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W D2, (A5)\n\n");
    }

    public void sub(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----SUB----\n");
        assembly.write("\tCLR.L D1\n");
        assembly.write("\tCLR.L D2\n");

        //Cargar operando 1 en D1
        Variable operand1 = (Variable) i.getOperand1();
        if (operand1.getValue() != null) {
            assembly.write("\tMOVE.W #" + operand1.getValue() + ", D1\n");
        } else {
            if (varTable.get(operand1.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + operand1.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(operand1.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D1\n");
        }
        //Cargar operando 2 en D2
        Variable operand2 = (Variable) i.getOperand2();
        if (operand2.getValue() != null) {
            assembly.write("\tMOVE.W #" + operand2.getValue() + ", D2\n");
        } else {
            if (varTable.get(operand2.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + operand2.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(operand2.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D2\n");
        }
        //Resta
        assembly.write("\tSUB.W D1, D2\n");

        //Guardar valor en memoria
        Variable result = (Variable) i.getResult();
        if (varTable.get(result.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + result.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(result.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W D2, (A5)\n\n");
    }

    public void prod(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----MUL----\n");
        assembly.write("\tCLR.L D1\n");
        assembly.write("\tCLR.L D2\n");

        //Cargar operando 1 en D1
        Variable operand1 = (Variable) i.getOperand1();
        if (operand1.getValue() != null) {
            assembly.write("\tMOVE.W #" + operand1.getValue() + ", D1\n");
        } else {
            if (varTable.get(operand1.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + operand1.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(operand1.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D1\n");
        }
        //Cargar operando 2 en D2
        Variable operand2 = (Variable) i.getOperand2();
        if (operand2.getValue() != null) {
            assembly.write("\tMOVE.W #" + operand2.getValue() + ", D2\n");
        } else {
            if (varTable.get(operand2.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + operand2.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(operand2.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D2\n");
        }
        //Multiplicacion
        assembly.write("\tMULS.W D1, D2\n");

        //Guardar valor en memoria
        Variable result = (Variable) i.getResult();
        if (varTable.get(result.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + result.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(result.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W D2, (A5)\n\n");
    }

    public void div(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----DIV----\n");
        //Cargar operando 2 en D1
        Variable operand1 = (Variable) i.getOperand1();
        //Cargar operando 1 en D2
        Variable operand2 = (Variable) i.getOperand2();
        if (operand2.getValue() != null) {
            assembly.write("\tMOVE.W #" + operand2.getValue() + ", D1\n");
        } else {
            if (varTable.get(operand2.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + operand2.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(operand2.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D1\n");
        }

        if (operand1.getValue() != null) {
            assembly.write("\tMOVE.W #" + operand1.getValue() + ", D2\n");
        } else {
            if (varTable.get(operand1.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + operand1.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(operand1.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D2\n");
        }
        //Division
        assembly.write("\tDIVS.W D1, D2\n");

        //Guardar valor en memoria
        Variable result = (Variable) i.getResult();
        if (varTable.get(result.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + result.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(result.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W D2, (A5)\n\n");
    }

    public void mod(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----MOD----\n");
        assembly.write("\tCLR.L D1\n");
        assembly.write("\tCLR.L D2\n");

        //Cargar operando 2 en D1
        Variable operand1 = (Variable) i.getOperand1();
        //Cargar operando 1 en D2
        Variable operand2 = (Variable) i.getOperand2();

        if (operand2.getValue() != null) {
            assembly.write("\tMOVE.W #" + operand2.getValue() + ", D1\n");
        } else {
            if (varTable.get(operand2.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + operand2.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(operand2.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D1\n");
        }

        if (operand1.getValue() != null) {
            assembly.write("\tMOVE.W #" + operand1.getValue() + ", D2\n");
        } else {
            if (varTable.get(operand1.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + operand1.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(operand1.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D2\n");
        }
        //Division
        assembly.write("\tDIVS.W D1, D2\n");

        //Guardar valor en memoria
        Variable result = (Variable) i.getResult();
        if (varTable.get(result.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + result.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(result.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tSWAP D1\n");
        assembly.write("\tMOVE.W D2, (A5)\n\n");
    }

    public void neg(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----NEGATE----\n");
        Variable result = (Variable) i.getResult();

        if (varTable.get(result.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + result.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(result.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tNEG.W (A5)\n\n");

    }

    public void and(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----AND----\n");
        assembly.write("\tCLR.L D1\n");
        assembly.write("\tCLR.L D2\n");
        //Cargar operando 1 en D1
        Variable operand1 = (Variable) i.getOperand1();
        if (operand1.getValue() != null) {
            assembly.write("\tMOVE.W #" + operand1.getValue() + ", D1\n");
        } else {
            if (varTable.get(operand1.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + operand1.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(operand1.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D1\n");
        }

        //Cargar operando 2 en D2
        Variable operand2 = (Variable) i.getOperand2();
        if (operand2.getValue() != null) {
            assembly.write("\tMOVE.W #" + operand2.getValue() + ", D2\n");
        } else {
            if (varTable.get(operand2.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + operand2.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(operand2.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D2\n");
        }
        //and
        assembly.write("\tAND.W D2, D1\n");

        //Guardar valor en memoria
        Variable result = (Variable) i.getResult();
        if (varTable.get(result.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + result.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(result.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W D1, (A5)\n\n");
    }

    public void or(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----OR----\n");
        assembly.write("\tCLR.L D1\n");
        assembly.write("\tCLR.L D2\n");

        //Cargar operando 1 en D1
        Variable operand1 = (Variable) i.getOperand1();
        if (operand1.getValue() != null) {
            assembly.write("\tMOVE.W #" + operand1.getValue() + ", D1\n");
        } else {
            if (varTable.get(operand1.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + operand1.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(operand1.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D1\n");
        }
        //Cargar operando 2 en D2
        Variable operand2 = (Variable) i.getOperand2();
        if (operand2.getValue() != null) {
            assembly.write("\tMOVE.W #" + operand2.getValue() + ", D2\n");
        } else {
            if (varTable.get(operand2.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + operand2.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(operand2.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D2\n");
        }
        //or
        assembly.write("\tOR.W D2, D1\n");

        //Guardar valor en memoria
        Variable result = (Variable) i.getResult();
        if (varTable.get(result.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + result.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(result.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W D1, (A5)\n\n");
    }

    public void indVal(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----OBTAIN VALUE FROM INDIRECTION----\n");
        Variable base = (Variable) i.getOperand1();
        Variable offset = (Variable) i.getOperand2();
        Variable destination = (Variable) i.getResult();

        //Obtain if base is local or global
        if (varTable.get(base.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + base.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(base.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }

        assembly.write("\tCLR.L D1\n");
        //Obtain if offset is local or global
        if (offset.getValue() != null) {
            assembly.write("\tMOVE.W #" + offset.getValue() + ", D1\n");
        } else {
            if (varTable.get(offset.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + offset.getName() + ", A4\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(offset.getId()).delta + ", A4\n");
                assembly.write("\tADD.L A6, A4\n");
            }

            //Obtain offset value and add it to the base
            assembly.write("\tMOVE.W (A4), D1\n");
        }
        assembly.write("\tMULU.W #2, D1\n");
        assembly.write("\tEXT.L D1\n");
        assembly.write("\tADD.L D1, A5\n"); //REVISAR

        //Obtain if result is local or global
        
        if (varTable.get(destination.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + destination.getName() + ", A4\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(destination.getId()).delta + ", A4\n");
            assembly.write("\tADD.L A6, A4\n");
        }

        assembly.write("\tMOVE.W (A5), (A4)\n\n");
    }

    public void indAss(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----SET VALUE FROM INDIRECTION----\n");
        Variable base = (Variable) i.getResult();
        Variable offset = (Variable) i.getOperand2();
        Variable origin = (Variable) i.getOperand1();

        //Obtain if base is local or global
        if (varTable.get(base.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + base.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(base.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }

        //Obtain if offset is local or global
        if (offset.getValue() != null) {
            assembly.write("\tMOVE.W #" + offset.getValue() + ", D1\n");
        } else {
            if (varTable.get(offset.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + offset.getName() + ", A4\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(offset.getId()).delta + ", A4\n");
                assembly.write("\tADD.L A6, A4\n");
            }
            //Obtain offset value and add it to the base
            assembly.write("\tCLR.L D1\n");
            assembly.write("\tMOVE.W (A4), D1\n");
        }
        assembly.write("\tMULU.W #2, D1\n");
        assembly.write("\tEXT.L D1\n");
        assembly.write("\tADD.L D1, A5\n"); //REVISAR

        if (origin.getValue() != null) {
            assembly.write("\tMOVE.W #" + origin.getValue() + ", (A5)\n");
        } else {
            //Obtain if result is local or global
            if (varTable.get(origin.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + origin.getName() + ", A4\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(origin.getId()).delta + ", A4\n");
                assembly.write("\tADD.L A6, A4\n");
            }
            assembly.write("\tMOVE.W (A4), (A5)\n\n");
        }
    }

    public void skip(BufferedWriter assembly, Instruction i) throws IOException {
        Tag e = (Tag) i.getResult();
        assembly.write(e.getName() + ":\n");
    }

    public void goTo(BufferedWriter assembly, Instruction i) throws IOException {
        Tag result = (Tag) i.getResult();
        assembly.write("\tJMP " + result.getName() + " * ----GOTO----\n\n");
    }

    public void ifLt(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----COMPARE LT----\n");
        Tag tag = (Tag) i.getResult();
        Variable value2 = (Variable) i.getOperand2(); // D1 < D2?
        Variable value1 = (Variable) i.getOperand1();

        if (value1.getValue() != null) {
            assembly.write("\tMOVE.W #" + value1.getValue() + ", D1\n");
        } else {
            if (varTable.get(value1.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + value1.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(value1.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D1\n");
        }

        if (value2.getValue() != null) {
            assembly.write("\tMOVE.W #" + value2.getValue() + ", D2\n");
        } else {
            if (varTable.get(value2.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + value2.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(value2.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D2\n");
        }
        assembly.write("\tCMP.W D2, D1\n");
        assembly.write("\tBLT.W " + tag.getName() + "\n\n");
    }

    public void ifLe(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----COMPARE LE----\n");
        Tag tag = (Tag) i.getResult();
        Variable value2 = (Variable) i.getOperand2(); // D1 < D2?
        Variable value1 = (Variable) i.getOperand1();

        if (value1.getValue() != null) {
            assembly.write("\tMOVE.W #" + value1.getValue() + ", D1\n");
        } else {
            if (varTable.get(value1.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + value1.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(value1.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D1\n");
        }

        if (value2.getValue() != null) {
            assembly.write("\tMOVE.W #" + value2.getValue() + ", D2\n");
        } else {
            if (varTable.get(value2.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + value2.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(value2.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D2\n");
        }
        assembly.write("\tCMP.W D2, D1\n");
        assembly.write("\tBLE.W " + tag.getName() + "\n\n");
    }

    public void ifEq(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----COMPARE EQ----\n");
        Tag tag = (Tag) i.getResult();
        Variable value2 = (Variable) i.getOperand2(); // D1 > D2?
        Variable value1 = (Variable) i.getOperand1();

        if (value1.getValue() != null) {
            assembly.write("\tMOVE.W #" + value1.getValue() + ", D1\n");
        } else {
            if (varTable.get(value1.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + value1.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(value1.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D1\n");
        }

        if (value2.getValue() != null) {
            assembly.write("\tMOVE.W #" + value2.getValue() + ", D2\n");
        } else {
            if (varTable.get(value2.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + value2.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(value2.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D2\n");
        }
        assembly.write("\tCMP.W D1, D2\n");
        assembly.write("\tBEQ.W " + tag.getName() + "\n\n");
    }

    public void ifGt(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----COMPARE GT----\n");
        Tag tag = (Tag) i.getResult();
        Variable value2 = (Variable) i.getOperand2(); // D1 > D2?
        Variable value1 = (Variable) i.getOperand1();

        if (value1.getValue() != null) {
            assembly.write("\tMOVE.W #" + value1.getValue() + ", D1\n");
        } else {
            if (varTable.get(value1.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + value1.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(value1.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D1\n");
        }

        if (value2.getValue() != null) {
            assembly.write("\tMOVE.W #" + value2.getValue() + ", D2\n");
        } else {
            if (varTable.get(value2.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + value2.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(value2.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D2\n");
        }
        assembly.write("\tCMP.W D2, D1\n");
        assembly.write("\tBGT.W " + tag.getName() + "\n\n");
    }

    public void ifGe(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----COMPARE GE----\n");
        Tag tag = (Tag) i.getResult();
        Variable value2 = (Variable) i.getOperand2(); // D1 < D2?
        Variable value1 = (Variable) i.getOperand1();

        if (value1.getValue() != null) {
            assembly.write("\tMOVE.W #" + value1.getValue() + ", D1\n");
        } else {
            if (varTable.get(value1.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + value1.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(value1.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D1\n");
        }

        if (value2.getValue() != null) {
            assembly.write("\tMOVE.W #" + value2.getValue() + ", D2\n");
        } else {
            if (varTable.get(value2.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + value2.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(value2.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D2\n");
        }

        assembly.write("\tCMP.W D2, D1\n");
        assembly.write("\tBGE.W " + tag.getName() + "\n\n");
    }

    public void ifNe(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----COMPARE NE----\n");
        Tag tag = (Tag) i.getResult();
        Variable value2 = (Variable) i.getOperand2(); // D1 > D2?
        Variable value1 = (Variable) i.getOperand1();

        if (value1.getValue() != null) {
            assembly.write("\tMOVE.W #" + value1.getValue() + ", D1\n");
        } else {
            if (varTable.get(value1.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + value1.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(value1.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D1\n");
        }

        if (value2.getValue() != null) {
            assembly.write("\tMOVE.W #" + value2.getValue() + ", D2\n");
        } else {
            if (varTable.get(value2.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + value2.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(value2.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D2\n");
        }

        assembly.write("\tCMP.W D1, D2\n");
        assembly.write("\tBNE.W " + tag.getName() + "\n\n");
    }

    public void pmb(BufferedWriter assembly, Instruction i) throws IOException {
        Function f = (Function) i.getResult();
        //Reservar memoria del stack para la funcion actual
        assembly.write("\tSUB.L #" + (funTable.get(f.getId()).wordsVars) + ", SP\n\n");
    }

    public void call(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("\tMOVE.L A6, -8(A7)\n");//Guardar Base pointer funcion anterior
        assembly.write("\tMOVE.L A7, A6\n");

        if (i.getResult() instanceof Function) {
            Function result = (Function) i.getResult();
            assembly.write("\tJSR " + result.getStart().getName() + " * ----FUNCTION CALL----\n\n");
        } else if (i.getResult() instanceof Tag) {
            Tag result = (Tag) i.getResult();
            assembly.write("\tJSR " + result.getName() + " * ----FUNCTION CALL----\n\n");
        }
    }

    public void rtn(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----RETURN----\n");
        //revisar si se devuelve valor
        Variable ret = (Variable) i.getResult();
        if (ret != null) {
            if (ret.getValue() != null) {
                assembly.write("\tMOVE.W #" + ret.getValue() + ", D4 * ----RETURN VALUE----\n");
            } else {
                if (varTable.get(ret.getId()).idFun == -1) { //Es una variable global
                    assembly.write("\tLEA " + ret.getName() + ", A5\n");
                } else {
                    assembly.write("\tMOVE.L #" + varTable.get(ret.getId()).delta + ", A5\n");
                    assembly.write("\tADD.L A6, A5\n");
                }
                assembly.write("\tMOVE.W (A5), D4 * ----RETURN VALUE----\n");
            }
        }

        assembly.write("\tMOVE.L A6, A7\n"); //Mover SP justo antes de la direccion de retorno
        assembly.write("\tSUB.L #4, A7\n");

        assembly.write("\tMOVE.L -8(A6), A6\n"); //Cargar Base pointer funcion anterior
        assembly.write("\tRTS\n\n");

    }

    public void inc(BufferedWriter assembly, Instruction i) throws IOException {
        Variable result = (Variable) i.getResult();

        if (varTable.get(result.getId()).idFun == -1) { //Es una variable global
            assembly.write("* ----INCREMENT GLOBAL VARIABLE----\n");
            assembly.write("\tLEA " + result.getName() + ", A5\n");
            assembly.write("\tADD.W #1, (A5)\n\n");
        } else {
            assembly.write("* ----INCREMENT LOCAL VARIABLE----\n");
            assembly.write("\tMOVE.L #" + varTable.get(result.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
            assembly.write("\tADD.W #1, (A5)\n\n");
        }
    }

    public void put(BufferedWriter assembly, Instruction i) throws IOException {
        Variable result = (Variable) i.getResult();
        result.incrementTransfer();
        if (varTable.get(result.getId()).idFun == -1) { //Es una variable global
            assembly.write("* ----COPY GLOBAL VARIABLE ON THE STACK----\n");
            assembly.write("\tMOVE.L #" + (result.getWords() / 2 - 1) + ", D6\n");
            assembly.write("\tLEA " + result.getName() + ", A5\n");
            assembly.write("MOVE_LOOP_" + result.getNameTransfer() + ":\n");
            assembly.write("\tMOVE.W (A5)+, -(A7)\n");
            assembly.write("\tDBF D6, MOVE_LOOP_" + result.getNameTransfer() + "\n\n");
        } else {
            assembly.write("* ----COPY LOCAL VARIABLE ON THE STACK----\n");
            assembly.write("\tMOVE.L #" + (result.getWords() / 2 - 1) + ", D6\n");
            assembly.write("\tMOVE.L #" + varTable.get(result.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
            assembly.write("MOVE_LOOP_" + result.getNameTransfer() + ":\n");
            assembly.write("\tMOVE.W (A5)+, -(A7)\n");
            assembly.write("\tDBF D6, MOVE_LOOP_" + result.getNameTransfer() + "\n\n");
        }
    }

    public void pop(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----POP----\n");
        Function fun = (Function) i.getOperand1();
        assembly.write("\tADD.L #" + funTable.get(fun.getId()).wordsParam + ", A7\n");

        Variable ret = (Variable) i.getResult();

        if (ret != null) {
            if (varTable.get(ret.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + ret.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(ret.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }

            assembly.write("\tMOVE.W D4, (A5)\n");
        }
        assembly.write("\n");
    }

    public void read(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----READ----\n");
        assembly.write("\tCLR.W D1\n");
        assembly.write("\tMOVE.W #5, D0\n");
        assembly.write("\tTRAP #15\n");

        Variable result = (Variable) i.getResult();
        if (varTable.get(result.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + result.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(result.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W D1, (A5)\n\n");
    }

    public void pos(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----POS----\n");
        Variable col = (Variable) i.getOperand1();
        if (col.getValue() != null) {
            assembly.write("\tMOVE.B #" + col.getValue() + ", D5\n");
        } else {
            if (varTable.get(col.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + col.getName() + ", A4\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(col.getId()).delta + ", A4\n");
                assembly.write("\tADD.L A6, A4\n");
            }
            assembly.write("\tMOVE.B 1(A4), D5\n");
        }
        assembly.write("\tLSL.W #8, D5\n");

        Variable row = (Variable) i.getOperand2();
        if (row.getValue() != null) {
            assembly.write("\tMOVE.B #" + row.getValue() + ", D5\n");
        } else {
            if (varTable.get(row.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + row.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(row.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.B 1(A5), D5\n");
        }

        assembly.write("\tMOVE.W D5, D1\n");
        assembly.write("\tMOVE.W #11, D0\n");
        assembly.write("\tTRAP #15\n");

    }

    public void write(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----WRITE----\n");
        Variable bot = (Variable) i.getOperand1();
        if (bot.getValue() != null) {
            assembly.write("\tMOVE.W #" + bot.getValue() + ", D2\n");
        } else {
            if (varTable.get(bot.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + bot.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(bot.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D2\n");
        }

        Variable top = (Variable) i.getOperand2();
        if (top.getValue() != null) {
            assembly.write("\tMOVE.W #" + top.getValue() + ", D3\n");
        } else {
            if (varTable.get(top.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + top.getName() + ", A5\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(top.getId()).delta + ", A5\n");
                assembly.write("\tADD.L A6, A5\n");
            }
            assembly.write("\tMOVE.W (A5), D3\n");

        }
        Variable base = (Variable) i.getResult();
        if (varTable.get(base.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + base.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(base.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }

        assembly.write("\tSUB.W D2, D3\n");
        assembly.write("\tLSL.W #1, D2\n");
        assembly.write("\tADD.W D2, A5\n"); //Base con offest low bound

        //Registro para iterear
        assembly.write("\tMOVE.W #6, D0\n");

        assembly.write("WRITE_LOOP_" + writeLoop + ":\n");
        assembly.write("\tMOVE.W (A5)+, D1\n");
        assembly.write("\tTRAP #15\n");
        assembly.write("\tDBF D3, WRITE_LOOP_" + writeLoop + "\n\n");
        writeLoop++;

    }

    public void halt(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("\tSIMHALT\n");
    }

}
