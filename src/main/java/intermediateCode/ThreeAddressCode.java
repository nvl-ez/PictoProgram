package intermediateCode;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.LinkedList;
import java.util.TreeMap;

public class ThreeAddressCode {

    private BufferedWriter writer;

    LinkedList<Instruction> code;
    TreeMap<Integer, RowVar> varTable;
    TreeMap<Integer, RowFun> funTable;
    Function last = null;

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
        try {
            writer.write(instruction.toString() + "\n");
            writer.flush();
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
    }

    public void addVariable(Variable var) {
        varTable.put(var.getId(), new RowVar(last != null ? last.getId() : -1, var, var.getWords(), 0));
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
                varTable.get(rowVar).delta = -(rowFun.wordsVars*2);
            } else if (varTable.get(rowVar).var.isArg() && varTable.get(rowVar).idFun != -1) {
                RowFun rowFun = funTable.get(varTable.get(rowVar).idFun);
                rowFun.wordsParam += varTable.get(rowVar).words;
                varTable.get(rowVar).delta = (rowFun.wordsParam*2);
            }
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

            assembly.write("\tORG \t$" + (globalWords * 2) + "\nSTAR:\n");

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
                    default ->
                        throw new IllegalArgumentException("Unknown operation");
                }
            }

            assembly.write("\tEND STAR\n");
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
            if (varTable.get(origin.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + origin.getName() + ", A4\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(origin.getId()).delta + ", A4\n");
                assembly.write("\tADD.L A6, A4\n");
            }

            assembly.write("\tMOVE.W (A4), (A5)\n\n");
        }
    }

    public void sum(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----SUM----\n");
        assembly.write("\tCLR.L D1\n");
        assembly.write("\tCLR.L D2\n");
        
        //Cargar operando 1 en D1
        Variable operand1 = (Variable) i.getOperand1();
        if (varTable.get(operand1.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + operand1.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(operand1.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D1\n");

        //Cargar operando 2 en D2
        Variable operand2 = (Variable) i.getOperand2();
        if (varTable.get(operand2.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + operand2.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(operand2.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D2\n");

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
        if (varTable.get(operand1.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + operand1.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(operand1.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D1\n");

        //Cargar operando 2 en D2
        Variable operand2 = (Variable) i.getOperand2();
        if (varTable.get(operand2.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + operand2.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(operand2.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D2\n");

        //Resta
        assembly.write("\tSUB.W D2, D1\n");

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

    public void prod(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----MUL----\n");
        assembly.write("\tCLR.L D1\n");
        assembly.write("\tCLR.L D2\n");
        
        //Cargar operando 1 en D1
        Variable operand1 = (Variable) i.getOperand1();
        if (varTable.get(operand1.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + operand1.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(operand1.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D1\n");

        //Cargar operando 2 en D2
        Variable operand2 = (Variable) i.getOperand2();
        if (varTable.get(operand2.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + operand2.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(operand2.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D2\n");

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
        if (varTable.get(operand2.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + operand2.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(operand2.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D1\n");

        
        if (varTable.get(operand1.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + operand1.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(operand1.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D2\n");

        //Division
        assembly.write("\tDIVS.W D2, D1\n");

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

    public void mod(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----MOD----\n");
        assembly.write("\tCLR.L D1\n");
        assembly.write("\tCLR.L D2\n");
        
        //Cargar operando 2 en D1
        Variable operand1 = (Variable) i.getOperand1();
        //Cargar operando 1 en D2
        Variable operand2 = (Variable) i.getOperand2();
        if (varTable.get(operand2.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + operand2.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(operand2.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D1\n");

        if (varTable.get(operand1.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + operand1.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(operand1.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D2\n");

        //Division
        assembly.write("\tDIVS.W D2, D1\n");

        //Guardar valor en memoria
        Variable result = (Variable) i.getResult();
        if (varTable.get(result.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + result.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(result.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tSWAP D1\n");
        assembly.write("\tMOVE.W D1, (A5)\n\n");
    }

    public void neg(BufferedWriter assembly, Instruction i) throws IOException {
        Variable result = (Variable) i.getResult();

        if (varTable.get(result.getId()).idFun == -1) { //Es una variable global
            assembly.write("* ----NEGATE GLOBAL VARIABLE----\n");
            assembly.write("\tLEA " + result.getName() + ", A5\n");
        } else {
            assembly.write("* ----NEGATE LOCAL VARIABLE----\n");
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
        if (varTable.get(operand1.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + operand1.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(operand1.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D1\n");

        //Cargar operando 2 en D2
        Variable operand2 = (Variable) i.getOperand2();
        if (varTable.get(operand2.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + operand2.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(operand2.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D2\n");

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
        if (varTable.get(operand1.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + operand1.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(operand1.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D1\n");

        //Cargar operando 2 en D2
        Variable operand2 = (Variable) i.getOperand2();
        if (varTable.get(operand2.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + operand2.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(operand2.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D2\n");

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
        Variable base = (Variable)i.getOperand1();
        Variable offset = (Variable)i.getOperand2();
        Variable destination = (Variable)i.getResult();
        
        //Obtain if base is local or global
        if (varTable.get(base.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + base.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(base.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        
        //Obtain if offset is local or global
        if (varTable.get(offset.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + offset.getName() + ", A4\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(offset.getId()).delta + ", A4\n");
            assembly.write("\tADD.L A6, A4\n");
        }
        
        //Obtain offset value and add it to the base
        assembly.write("\tCLR.L D1\n");
        assembly.write("\tMOVE.W (A4), D1\n");
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
        Variable base = (Variable)i.getResult();
        Variable offset = (Variable)i.getOperand2();
        Variable origin = (Variable)i.getOperand1();
        
        //Obtain if base is local or global
        if (varTable.get(base.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + base.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(base.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        
        //Obtain if offset is local or global
        if (varTable.get(offset.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + offset.getName() + ", A4\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(offset.getId()).delta + ", A4\n");
            assembly.write("\tADD.L A6, A4\n");
        }
        
        //Obtain offset value and add it to the base
        assembly.write("\tCLR.L D1\n");
        assembly.write("\tMOVE.W (A4), D1\n");
        assembly.write("\tMULU.W #2, D1\n");
        assembly.write("\tEXT.L D1\n");
        assembly.write("\tADD.L D1, A5\n"); //REVISAR
        
        //Obtain if result is local or global
        if (varTable.get(origin.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + origin.getName() + ", A4\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(origin.getId()).delta + ", A4\n");
            assembly.write("\tADD.L A6, A4\n");
        }
        
        assembly.write("\tMOVE.W (A4), (A5)\n\n");
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
        Tag tag = (Tag)i.getResult();
        Variable value2 = (Variable)i.getOperand2(); // D1 < D2?
        Variable value1 = (Variable)i.getOperand1();
        
        if (varTable.get(value1.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + value1.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(value1.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D1\n");
        
        if (varTable.get(value2.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + value2.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(value2.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D2\n");
        
        assembly.write("\tCMP.W D1, D2\n");
        assembly.write("\tBPL.W "+tag.getName()+"\n\n");
    }

    public void ifLe(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing IFLE operation");
    }

    public void ifEq(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----COMPARE EQ----\n");
        Tag tag = (Tag)i.getResult();
        Variable value2 = (Variable)i.getOperand2(); // D1 > D2?
        Variable value1 = (Variable)i.getOperand1();
        
        if (varTable.get(value1.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + value1.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(value1.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D1\n");
        
        if (varTable.get(value2.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + value2.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(value2.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D2\n");
        
        assembly.write("\tCMP.W D1, D2\n");
        assembly.write("\tBEQ.W "+tag.getName()+"\n\n");
    }

    public void ifGt(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----COMPARE GT----\n");
        Tag tag = (Tag)i.getResult();
        Variable value2 = (Variable)i.getOperand2(); // D1 > D2?
        Variable value1 = (Variable)i.getOperand1();
        
        if (varTable.get(value1.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + value1.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(value1.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D1\n");
        
        if (varTable.get(value2.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + value2.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(value2.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D2\n");
        
        assembly.write("\tCMP.W D1, D2\n");
        assembly.write("\tBMI.W "+tag.getName()+"\n\n");
    }

    public void ifGe(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing IFGE operation");
    }

    public void ifNe(BufferedWriter assembly, Instruction i) throws IOException {
        assembly.write("* ----COMPARE NE----\n");
        Tag tag = (Tag)i.getResult();
        Variable value2 = (Variable)i.getOperand2(); // D1 > D2?
        Variable value1 = (Variable)i.getOperand1();
        
        if (varTable.get(value1.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + value1.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(value1.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D1\n");
        
        if (varTable.get(value2.getId()).idFun == -1) { //Es una variable global
            assembly.write("\tLEA " + value2.getName() + ", A5\n");
        } else {
            assembly.write("\tMOVE.L #" + varTable.get(value2.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
        }
        assembly.write("\tMOVE.W (A5), D2\n");
        
        assembly.write("\tCMP.W D1, D2\n");
        assembly.write("\tBEQ.W "+tag.getName()+"\n\n");
    }

    public void pmb(BufferedWriter assembly, Instruction i) throws IOException {
        Function f = (Function)i.getResult();
        //Reservar memoria del stack para la funcion actual
        assembly.write("\tSUB.L #"+funTable.get(f.getId()).wordsVars*2+", SP\n\n");
    }

    public void call(BufferedWriter assembly, Instruction i) throws IOException {
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
        System.out.println("Executing RTN operation");
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
            assembly.write("\tMOVE.L #" + (result.getWords() - 1) + ", D6\n");
            assembly.write("\tLEA " + result.getName() + ", A5\n");
            assembly.write("MOVE_LOOP_" + result.getNameTransfer() + ":\n");
            assembly.write("\tMOVE.W (A5)+, -(A7)\n");
            assembly.write("\tDBF D6, MOVE_LOOP_" + result.getNameTransfer() + "\n\n");
        } else {
            assembly.write("* ----COPY LOCAL VARIABLE ON THE STACK----\n");
            assembly.write("\tMOVE.L #" + (result.getWords() - 1) + ", D6\n");
            assembly.write("\tMOVE.L #" + varTable.get(result.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
            assembly.write("MOVE_LOOP_" + result.getNameTransfer() + ":\n");
            assembly.write("\tMOVE.W (A5), -(A7)\n");
            assembly.write("\tSUB.L #2, A5\n");
            assembly.write("\tDBF D6, MOVE_LOOP_" + result.getNameTransfer() + "\n\n");
        }
    }

    public void pop(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing INC operation");
    }
}
