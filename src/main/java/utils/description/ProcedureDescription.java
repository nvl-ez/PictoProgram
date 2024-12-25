
package utils.description;

import intermediateCode.Variable;
import utils.Types;


public class ProcedureDescription extends Description{
    private static int counter = 0;
    private final int procIdentifier;
    private Types type;
    
    public ProcedureDescription(String id, Types type) {
        super(id);
        this.type = type;
        
        counter++;
        procIdentifier = counter;
    }
    
    public Types getType(){
        return type;
    }
    
    public void setType(Types type){
        this.type = type;
    }
}
