package intermediateCode;

/**
 *
 * @author nahu
 */
 public class Operand {
    protected static ThreeAddressCode tac = null;
    
    public String getName(){
        return "";
    }
    public int getId(){
        return 0;
    }
    
    public static void setThreeAddressCode(ThreeAddressCode threeAddressCode){
        tac = threeAddressCode;
    }
}
