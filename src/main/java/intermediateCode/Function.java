
package intermediateCode;

import java.util.LinkedList;



public class Function extends  Operand {
    private static int counter = 0;
    private final int id;
    private final Tag start;
    private LinkedList<Variable> args;
    private boolean isMain = false;
    
    
    public Function(Tag start){
        id = counter;
        counter++;
        this.start = start;
        args = new LinkedList<>();
        
        tac.addFunction(this);
    }

    @Override
    public String getName() {
        return "f"+id;
    }
    
    public int getId() {
        return id;
    }
    
    public void makeMain(){
        start.setName("main");
    }
    
    public Tag getStart(){
        return start;
    }
    
    public int getNParams(){
        return args.size();
    }
    
    public void putArg(Variable arg){
        args.push(arg);
    }
    
    public LinkedList<Variable> getArgs(){
        return args;
    }
}
