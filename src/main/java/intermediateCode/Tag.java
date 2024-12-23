
package intermediateCode;



public class Tag implements Operand {
    private static int counter = 0;
    private final int id;
    
    public Tag(){
        id = counter;
        counter++;
    }
}
