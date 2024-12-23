
package utils.description;

import utils.Types;


public class ConstantDescription extends Description{
    private Types type;
    private Integer decimalValue = null;
    private Boolean booleanValue = null;
    private Character characterValue = null;
    
    public ConstantDescription(String id, int decimalValue) {
        super(id);
        this.type = Types.INT;
        this.decimalValue = decimalValue;
    }
    
    public ConstantDescription(String id, boolean booleanValue) {
        super(id);
        this.type = Types.BOOL;
        this.booleanValue = booleanValue;
    }
    
    public ConstantDescription(String id, char characterValue) {
        super(id);
        this.type = Types.CHAR;
        this.characterValue = characterValue;
    }
    
    //C0onstructor cuando hay error
    public ConstantDescription(String id) {
        super(id);
        this.type = Types.NULL;
    }
    
    public Types getType(){
        return type;
    }

    public int getDecimalValue() {
        return decimalValue;
    }

    public boolean getBooleanValue() {
        return booleanValue;
    }

    public char getCharacterValue() {
        return characterValue;
    }
    
    public void setDecimalValue(int decimalValue) {
        this.decimalValue = decimalValue;
    }
}
