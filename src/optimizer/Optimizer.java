package optimizer;

import intermediateCode.Instruction;
import intermediateCode.ThreeAddressCode;
import intermediateCode.Variable;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.TreeMap;

public class Optimizer {

    private LinkedList<Instruction> code;
    private HashMap<Integer, Uses> varUses;
    private TreeMap varTable;

    public Optimizer(LinkedList<Instruction> code, TreeMap varTable) {
        this.code = code;
        varUses = new HashMap<>();
        this.varTable = varTable;

        //Obtener todas las variables susceptibles de ser cambiadas por un literal
        for (Instruction instr : code) {
            //Añadir 1 al uso del operando 1
            if (instr.getOperand1() instanceof Variable) {
                Variable var = (Variable) instr.getOperand1();

                Uses useRow = varUses.get(var.getId());
                if (useRow == null) {
                    varUses.put(var.getId(), new Uses(1, 0));
                } else {
                    useRow.copy++;
                }
            }

            //Añadir 1 al uso del operando 2
            if (instr.getOperand2() instanceof Variable) {
                Variable var = (Variable) instr.getOperand2();

                Uses useRow = varUses.get(var.getId());
                if (useRow == null) {
                    varUses.put(var.getId(), new Uses(1, 0));
                } else {
                    useRow.copy++;
                }
            }

            //Añadir 1 asignamiento al operando
            if (instr.getResult() instanceof Variable) {
                Variable var = (Variable) instr.getResult();

                Uses useRow = varUses.get(var.getId());
                if (useRow == null) {
                    varUses.put(var.getId(), new Uses(0, 1));
                } else {
                    useRow.assign++;
                }
            }
        }
    }

    public void optimize() {
        ListIterator<Instruction> iterator = code.listIterator();

        //eliminar todas las instrucciones de copia de valores constantes
        while (iterator.hasNext()) {
            Instruction instr = iterator.next();
            if (instr.getResult() != null) {
                int id = instr.getResult().getId();
                Uses uses = varUses.get(id);
                if (instr.getValue() != null && uses.assign == 1 ) {
                    ((Variable) instr.getResult()).setValue(instr.getValue());
                    iterator.remove();
                    varTable.remove(id);
                }
            }
        }
        
    }

    private class Uses {

        public int copy = 0;
        public int assign = 0;
        public Integer value = null;

        public Uses(int copy, int assign) {
            this.copy = copy;
            this.assign = assign;
        }
    }
}
