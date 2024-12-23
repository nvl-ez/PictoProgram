
package utils.description;

import intermediateCode.Variable;
import utils.Types;


public class ProcedureDescription extends Description{
    private static int counter = 0;
    private final int procIdentifier;
    private Types type;
    
    private Variable var;
    
    public ProcedureDescription(String id, Types type) {
        super(id);
        this.type = type;
        
        counter++;
        procIdentifier = counter;
        var = new Variable();
    }
    
    public Types getType(){
        return type;
    }
    
    public void setType(Types type){
        this.type = type;
    }
    
    public Variable getVar() {
        return var;
    }

    public void setVar(Variable var) {
        this.var = var;
    }

}
