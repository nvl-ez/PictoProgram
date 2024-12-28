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
                varTable.get(rowVar).delta = -rowFun.wordsVars;
            } else if (varTable.get(rowVar).var.isArg() && varTable.get(rowVar).idFun != -1) {
                RowFun rowFun = funTable.get(varTable.get(rowVar).idFun);
                rowFun.wordsParam += varTable.get(rowVar).words;
                varTable.get(rowVar).delta = rowFun.wordsParam;
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
            assembly.write("\tMOVE.W #"+i.getValue()+", (A5)\n\n");
        } else {
            Variable origin = (Variable) i.getOperand1();
            //Obtener posicion de memoria contenedora del valor, revisar si es local o global (A4)
            if (varTable.get(origin.getId()).idFun == -1) { //Es una variable global
                assembly.write("\tLEA " + origin.getName() + ", A4\n");
            } else {
                assembly.write("\tMOVE.L #" + varTable.get(origin.getId()).delta + ", A4\n");
                assembly.write("\tADD.L A6, A4\n");
            }
            
            assembly.write("\tMOVE.W #"+i.getValue()+", (A5)\n\n");
        }
    }

    public void sum(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing SUM operation");
    }

    public void sub(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing SUB operation");
    }

    public void prod(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing PROD operation");
    }

    public void div(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing DIV operation");
    }

    public void mod(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing MOD operation");
    }

    public void neg(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing NEG operation");
    }

    public void and(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing AND operation");
    }

    public void or(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing OR operation");
    }

    public void indVal(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing IND_VAL operation");
    }

    public void indAss(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing IND_ASS operation");
    }

    public void skip(BufferedWriter assembly, Instruction i) throws IOException {
        Tag e = (Tag) i.getResult();
        assembly.write(e.getName() + ":\n");
    }

    public void goTo(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing GOTO operation");
    }

    public void ifLt(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing IFLT operation");
    }

    public void ifLe(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing IFLE operation");
    }

    public void ifEq(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing IFEQ operation");
    }

    public void ifGt(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing IFGT operation");
    }

    public void ifGe(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing IFGE operation");
    }

    public void ifNe(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing IFNE operation");
    }

    public void pmb(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing PMB operation");
    }

    public void call(BufferedWriter assembly, Instruction i) throws IOException {
        Function result = (Function) i.getResult();
        assembly.write("\tJSR " + result.getStart().getName() + " * ----FUNCTION CALL----\n");
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

        if (varTable.get(result.getId()).idFun == -1) { //Es una variable global
            assembly.write("* ----COPY GLOBAL VARIABLE ON THE STACK----\n");
            assembly.write("\tMOVE.L #" + (result.getWords() - 1) + ", D6\n");
            assembly.write("\tLEA " + result.getName() + ", A5\n");
            assembly.write("MOVE_LOOP_" + result.getName() + ":\n");
            assembly.write("\tMOVE.W (A5)+, -(A7)\n");
            assembly.write("\tDBF D6, MOVE_LOOP_" + result.getName() + "\n\n");
        } else {
            assembly.write("* ----COPY LOCAL VARIABLE ON THE STACK----\n");
            assembly.write("\tMOVE.L #" + (result.getWords() - 1) + ", D6\n");
            assembly.write("\tMOVE.L #" + varTable.get(result.getId()).delta + ", A5\n");
            assembly.write("\tADD.L A6, A5\n");
            assembly.write("MOVE_LOOP_" + result.getName() + ":\n");
            assembly.write("\tMOVE.W (A5), -(A7)\n");
            assembly.write("\tSUB.L #1, A5\n");
            assembly.write("\tDBF D6, MOVE_LOOP_" + result.getName() + "\n\n");

        }
    }

    public void pop(BufferedWriter assembly, Instruction i) throws IOException {
        System.out.println("Executing INC operation");
    }
}
