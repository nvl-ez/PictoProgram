
package utils.description;

import intermediateCode.Variable;
import utils.Types;


public class VariableDescription extends Description{
    //Cuenta todas las instancias de descripcion y permite identificar a cada una
    private static int counter = 0;
    private final int varIdentifier;
    private Types type;
    private Variable var = null;

    
    public VariableDescription(String id, Types type) {
        super(id);
        
        counter++;
        varIdentifier = counter;
        this.type = type;
    }
    
    
    public int getVarIdentifier(){
        return varIdentifier;
    }
    
    public void setType(Types type){
        this.type = type;
    }
    
    public Types getType(){
        return type;
    }
}
