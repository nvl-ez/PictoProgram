
package intermediateCode;



public class Function implements Operand {
    private static int counter = 0;
    private final int id;
    
    public Function(){
        id = counter;
        counter++;
    }
}
