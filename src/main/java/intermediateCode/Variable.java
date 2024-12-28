
package intermediateCode;



public class Variable extends Operand {
    private static int counter = 0;
    private final int id;
    private int words = 1;
    private boolean arg;
    
    
    public Variable(int words, boolean arg){
        id = counter;
        counter++;
        this.words = words;
        this.arg = arg;
        tac.addVariable(this);
    }
    
    public void setWords(int i){
        words = i;
    }
    
    public int getWords(){
        return words;
    }


    @Override
    public String getName() {
        return "t"+id;
    }
    
    public int getId() {
        return id;
    }
    
    public boolean isArg(){
        return arg;
    }
}
