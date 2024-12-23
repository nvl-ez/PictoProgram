
package intermediateCode;



public class Variable implements Operand {
    private static int counter = 0;
    private final int id;
    private int words = 1;
    
    public Variable(){
        id = counter;
        counter++;
    }
    
    public void setWords(int i){
        words = i;
    }
}
