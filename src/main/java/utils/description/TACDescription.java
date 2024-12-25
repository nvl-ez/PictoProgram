package utils.description;

import intermediateCode.Variable;
import java.util.LinkedList;

public class TACDescription extends Description {
    private Variable var;
    private static int counter = 0;
    private final int varIdentifier;
    private LinkedList<Integer> sizes = null;

    //Para variables
    public TACDescription(String id, Variable var) {
        super(id);
        counter++;
        varIdentifier = counter;
        this.var = var;
    }
    
    //Para arrays
    public TACDescription(String id, Variable var, LinkedList<Integer> sizes) {
        super(id);
        counter++;
        varIdentifier = counter;
        this.var = var;
        this.sizes = sizes;
    }
    
    public Variable getVariable(){
        return var;
    }
    
    public LinkedList<Integer> getSizes(){
        return sizes;
    }
}
