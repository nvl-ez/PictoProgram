package utils.description;

import intermediateCode.Function;
import intermediateCode.Variable;
import java.util.LinkedList;

public class TACDescription extends Description {
    private Variable var = null;
    private static int counter = 0;
    private final int id;
    private LinkedList<Integer> sizes = null;
    private Function fun = null;

    //Para variables
    public TACDescription(String id, Variable var) {
        super(id);
        counter++;
        this.id = counter;
        this.var = var;
    }
    
    public TACDescription(String id, Function fun) {
        super(id);
        counter++;
        this.id = counter;
        this.fun = fun;
    }
    
    //Para arrays
    public TACDescription(String id, Variable var, LinkedList<Integer> sizes) {
        super(id);
        counter++;
        this.id = counter;
        this.var = var;
        this.sizes = sizes;
    }
    
    public Variable getVariable(){
        return var;
    }
    
    public Function getFunction(){
        return fun;
    }
    
    public LinkedList<Integer> getSizes(){
        return sizes;
    }
}
