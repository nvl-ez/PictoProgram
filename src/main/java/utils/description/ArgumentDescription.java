
package utils.description;

import intermediateCode.Variable;
import java.util.LinkedList;
import utils.Types;


public class ArgumentDescription extends Description {
    
    private LinkedList<Integer> dimentions = null;
    private Types type;
    private Variable var = null;
    
    public ArgumentDescription(String id, Types type) {
        super(id);
        this.type = type;
    }
    
    public ArgumentDescription(String id, Types type, LinkedList<Integer> dimentions) {
        super(id);
        this.dimentions = dimentions;
        this.type = type;
    }
    
    public ArgumentDescription(String id, Variable var) {
        super(id);
        this.var = var;
    }
    
    public LinkedList<Integer> getDimentions(){
        return dimentions;
    }
    
    public Types getType(){
        return type;
    }
    
    public Variable getVariable(){
        return var;
    }
}
