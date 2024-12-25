
package intermediateCode;



public class Variable extends Operand {
    private static int counter = 0;
    private final int id;
    private int words = 1;
    
    
    public Variable(int words){
        id = counter;
        counter++;
        this.words = words;
        
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
}
