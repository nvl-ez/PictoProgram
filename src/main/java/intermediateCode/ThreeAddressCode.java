
package intermediateCode;

import java.util.LinkedList;
import java.util.TreeMap;


public class ThreeAddressCode {
    LinkedList<Instruction> code;
    TreeMap<Integer,Variable> varTable;
    TreeMap<Integer,Function> funTable;
    
    public ThreeAddressCode(){
        code = new LinkedList();
        varTable = new TreeMap();
        funTable = new TreeMap();
    }
    
    public void put(Instruction instruction){
        code.add(instruction);
    }
}
