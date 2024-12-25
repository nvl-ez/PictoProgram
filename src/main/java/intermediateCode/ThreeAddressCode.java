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
        varTable.put(var.getId(), new RowVar(last!=null?last.getId():-1, var.getWords(), 0));
    }

    public void addFunction(Function fun) {
        funTable.put(fun.getId(), new RowFun(fun.getStart(), fun.getNParams(), 0));
        last = fun;
    }

    private class RowVar {

        int idFun;
        int words;
        int delta;

        public RowVar(int idFun, int words, int delta) {
            this.idFun = idFun;
            this.words = words;
            this.delta = delta;
        }
    }

    private class RowFun {

        Tag start;
        int nParams;
        int wordsVars;

        public RowFun(Tag start, int nParams, int wordsVars) {
            this.start = start;
            this.nParams = nParams;
            this.wordsVars = wordsVars;
        }
    }
}
