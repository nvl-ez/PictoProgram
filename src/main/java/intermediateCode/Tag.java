
package intermediateCode;



public class Tag extends Operand {
    private static int counter = 0;
    private final int id;
    
    public Tag(){
        id = counter;
        counter++;
    }

    @Override
    public String getName() {
        return "e"+id;
    }
    
    public int getId() {
        return id;
    }
}
