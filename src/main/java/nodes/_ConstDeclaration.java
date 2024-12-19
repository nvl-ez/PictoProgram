package nodes;

import static nodes.Node.eh;
import utils.ErrorPhase;
import utils.OpArit;
import utils.Types;
import utils.description.ConstantDescription;

public class _ConstDeclaration extends Node {

    private Types type;
    private String id;
    private char characterValue;
    private int decimalValue;
    private boolean booleanValue;

    public _ConstDeclaration(Types type, String id, int decimalValue, int left, int right) {
        super(left, right);

        if (type == Types.VOID) {
            eh.addError(ErrorPhase.Semantic, "Constants cannot be of type void", left, right);
            st.put(new ConstantDescription(id));
            this.type = Types.NULL;
            return;
        }

        if (!checkInt(decimalValue)) {
            this.type = Types.NULL;
            st.put(new ConstantDescription(id));
            eh.addError(ErrorPhase.Semantic, "Value "+decimalValue+" is out of bounds", left, right);
            return;
        }
        
        if(type != Types.INT){
            this.type = Types.NULL;
            st.put(new ConstantDescription(id));
            eh.addError(ErrorPhase.Semantic, "Invalid type assignation for variable: "+id, left, right);
            return;
        }
        
        ConstantDescription description = new ConstantDescription(id, decimalValue);
        
        if(!st.put(description)){
            this.type = Types.NULL;
            eh.addError(ErrorPhase.Semantic, "Identifier '" + id + "' already in use", left, right);
            return;
        }
        this.type = type;
        this.id = id;
        this.decimalValue = decimalValue;
        
        
    }
    
    public _ConstDeclaration(Types type, String id, OpArit opArit, int decimalValue, int left, int right) {
        super(left, right);

        if (type == Types.VOID) {
            this.type = Types.NULL;
            eh.addError(ErrorPhase.Semantic, "Constants cannot be of type void", left, right);
            st.put(new ConstantDescription(id));
            return;
        }
        
        if(opArit != OpArit.SUB && opArit != OpArit.SUM){
            eh.addError(ErrorPhase.Semantic, "Invalid assignation", left, right);
            st.put(new ConstantDescription(id));
            this.type = Types.NULL;
            return;
        }
        
        if (!checkInt(decimalValue)) {
            this.type = Types.NULL;
            eh.addError(ErrorPhase.Semantic, "Value +-"+decimalValue+" is out of bounds", left, right);
            st.put(new ConstantDescription(id));
            return;
        }
        
        if(type != Types.INT){
            this.type = Types.NULL;
            st.put(new ConstantDescription(id));
            eh.addError(ErrorPhase.Semantic, "Invalid type assignation for variable: "+id, left, right);
            return;
        }
        
        ConstantDescription description = new ConstantDescription(id, decimalValue);
        if(!st.put(description)){
            this.type = Types.NULL;
            eh.addError(ErrorPhase.Semantic, "Identifier '" + id + "' already in use", left, right);
            return;
        }
        
        this.type = type;
        this.id = id;
        
        if(opArit == OpArit.SUB) decimalValue *=-1;
        this.decimalValue = decimalValue;
        
        
    }

    public _ConstDeclaration(Types type, String id, char characterValue, int left, int right) {
        super(left, right);

        if (type == Types.VOID) {
            this.type = Types.VOID;
            eh.addError(ErrorPhase.Semantic, "Constants cannot be of type void", left, right);
            st.put(new ConstantDescription(id));
            return;
        }
        
        if (!checkChar(characterValue)) {
            this.type = Types.NULL;
            st.put(new ConstantDescription(id));
            eh.addError(ErrorPhase.Semantic, "Constants cannot be of type void", left, right);
            return;
        }
        
        if(type != Types.CHAR){
            this.type = Types.NULL;
            st.put(new ConstantDescription(id));
            eh.addError(ErrorPhase.Semantic, "Invalid type assignation for variable: "+id, left, right);
            return;
        }
        
        ConstantDescription description = new ConstantDescription(id, characterValue);
        if(!st.put(description)){
            this.type = Types.NULL;
            eh.addError(ErrorPhase.Semantic, "Identifier '" + id + "' already in use", left, right);
            return;
        }

        this.type = type;
        this.id = id;
        this.characterValue = characterValue;
        
    }

    public _ConstDeclaration(Types type, String id, boolean booleanValue, int left, int right) {
        super(left, right);

        if (type == Types.VOID) {
            this.type = Types.NULL;
            eh.addError(ErrorPhase.Semantic, "Constants cannot be of type void", left, right);
            st.put(new ConstantDescription(id));
            return;
        }
        
        if(type != Types.BOOL){
            this.type = Types.NULL;
            st.put(new ConstantDescription(id));
            eh.addError(ErrorPhase.Semantic, "Invalid type assignation for variable: "+id, left, right);
            return;
        }
        
        ConstantDescription description = new ConstantDescription(id, booleanValue);
        if(!st.put(description)){
            this.type = Types.NULL;
            eh.addError(ErrorPhase.Semantic, "Identifier '" + id + "' already in use", left, right);
            return;
        }
        
        this.type = type;
        this.id = id;
        this.booleanValue = booleanValue;
    }

}
