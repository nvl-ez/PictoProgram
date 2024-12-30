
package intermediateCode;



public class Variable extends Operand {
    private static int counter = 0;
    private final int id;
    private int words = 1;
    private boolean arg;
    private int transferCount = 0;
    
    
    public Variable(int words, boolean arg){
        id = counter;
        counter++;
        this.words = words*2;
        this.arg = arg;
        tac.addVariable(this);
    }
    
    public void setWords(int i){
        words = i;
    }
    
    public int getWords(){
        return words;
    }
    
    public void incrementTransfer(){
        transferCount++;
    }

    @Override
    public String getName() {
        return "t"+id;
    }
    
    public String getNameTransfer() {
        return "t"+id+"_"+transferCount;
    }
    
    public int getId() {
        return id;
    }
    
    public boolean isArg(){
        return arg;
    }
}
