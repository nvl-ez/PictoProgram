
package intermediateCode;



public class Function extends  Operand {
    private static int counter = 0;
    private final int id;
    private final Tag start;
    private int nParams;
    
    
    public Function(Tag start, int nParams){
        id = counter;
        counter++;
        this.start = start;
        this.nParams = nParams;
        
        tac.addFunction(this);
    }

    @Override
    public String getName() {
        return "t"+id;
    }
    
    public int getId() {
        return id;
    }
    
    public Tag getStart(){
        return start;
    }
    
    public int getNParams(){
        return nParams;
    }
}
