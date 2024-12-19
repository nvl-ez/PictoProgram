package nodes;

import utils.ErrorTypes;
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
            eh.addError(ErrorTypes.INVALID_TYPE, Types.VOID, null, line, column);
            st.put(new ConstantDescription(id));
            this.type = Types.NULL;
            return;
        }

        if (!checkInt(decimalValue)) {
            this.type = Types.NULL;
            st.put(new ConstantDescription(id));
            eh.addError(ErrorTypes.VALUE_OUT_OF_BOUNDS, decimalValue, line, column);
            return;
        }
        
        if(type != Types.INT){
            this.type = Types.NULL;
            st.put(new ConstantDescription(id));
            eh.addError(ErrorTypes.INVALID_TYPE, Types.INT, type, line, column);
            return;
        }
        
        ConstantDescription description = new ConstantDescription(id, decimalValue);
        
        if(!st.put(description)){
            this.type = Types.NULL;
            eh.addError(ErrorTypes.DUPLICATED_NAMES, id, line, column);
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
            eh.addError(ErrorTypes.INVALID_TYPE, Types.VOID, null, line, column);
            st.put(new ConstantDescription(id));
            return;
        }
        
        if(opArit != OpArit.SUB && opArit != OpArit.SUM){
            eh.addError(ErrorTypes.INVALID_OPERATION, "", line, column);
            st.put(new ConstantDescription(id));
            this.type = Types.NULL;
            return;
        }
        
        if (!checkInt(decimalValue)) {
            this.type = Types.NULL;
            eh.addError(ErrorTypes.VALUE_OUT_OF_BOUNDS, decimalValue, line, column);
            st.put(new ConstantDescription(id));
            return;
        }
        
        if(type != Types.INT){
            this.type = Types.NULL;
            st.put(new ConstantDescription(id));
            eh.addError(ErrorTypes.INVALID_TYPE, Types.INT, type, line, column);
            return;
        }
        
        ConstantDescription description = new ConstantDescription(id, decimalValue);
        if(!st.put(description)){
            this.type = Types.NULL;
            eh.addError(ErrorTypes.DUPLICATED_NAMES, id, line, column);
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
            eh.addError(ErrorTypes.INVALID_TYPE, Types.VOID, null, line, column);
            st.put(new ConstantDescription(id));
            return;
        }
        
        if (!checkChar(characterValue)) {
            this.type = Types.NULL;
            st.put(new ConstantDescription(id));
            eh.addError(ErrorTypes.VALUE_OUT_OF_BOUNDS, characterValue, line, column);
            return;
        }
        
        if(type != Types.CHAR){
            this.type = Types.NULL;
            st.put(new ConstantDescription(id));
            eh.addError(ErrorTypes.INVALID_TYPE, Types.CHAR, type, line, column);
            return;
        }
        
        ConstantDescription description = new ConstantDescription(id, characterValue);
        if(!st.put(description)){
            this.type = Types.NULL;
            eh.addError(ErrorTypes.DUPLICATED_NAMES, id, line, column);
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
            eh.addError(ErrorTypes.INVALID_TYPE, Types.VOID, null, line, column);
            st.put(new ConstantDescription(id));
            return;
        }
        
        if(type != Types.BOOL){
            this.type = Types.NULL;
            st.put(new ConstantDescription(id));
            eh.addError(ErrorTypes.INVALID_TYPE, Types.BOOL, type, line, column);
            return;
        }
        
        ConstantDescription description = new ConstantDescription(id, booleanValue);
        if(!st.put(description)){
            this.type = Types.NULL;
            eh.addError(ErrorTypes.DUPLICATED_NAMES, id, line, column);
            return;
        }
        
        this.type = type;
        this.id = id;
        this.booleanValue = booleanValue;
    }

}
