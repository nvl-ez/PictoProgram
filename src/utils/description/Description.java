
package utils.description;

import intermediateCode.ThreeAddressCode;

public class Description {
    private String id;
    private int size;
    private static ThreeAddressCode tac;
    
    
    public Description(String id) {
        this.id = id;
    }

    public String getId(){
        return id;
    }
    
    public void setId(String id){
        this.id = id;
    }
    
    public void setThreeAddressCode(ThreeAddressCode threeAddressCode){
        tac = threeAddressCode;
    }
    
    
}
