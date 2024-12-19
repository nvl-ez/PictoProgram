package nodes;

import utils.ErrorPhase;
import utils.Types;
import utils.description.ConstantDescription;
import utils.description.Description;
import utils.description.IndexDescription;
import utils.description.ProcedureDescription;
import utils.description.TypeDescription;
import utils.description.VariableDescription;

public class _Value extends Node {

    private String id;
    private char characterValue;
    private boolean booleanValue;
    private int decimalValue;
    private _Expression expression;
    private _FunctionCall functionCall;
    private Types type;
    private _Index index;

    public _Value(_FunctionCall functionCall, int left, int right) {
        super(left, right);
        this.functionCall = functionCall;
        Description description = st.get(functionCall.getId());

        if (description != null && description instanceof ProcedureDescription) {
            type = ((ProcedureDescription)description).getType();
        } else{
            type = Types.NULL;
        }

    }

    public _Value(_Expression expression, int left, int right) {
        super(left, right);
        this.expression = expression;
        type = expression.getType();
    }

    public _Value(int decimal, int left, int right) {
        super(left, right);
        if (checkInt(decimal)) {
            this.decimalValue = decimal;
            type = Types.INT;
        }else{
            type = Types.NULL;
            eh.addError(ErrorPhase.Semantic, "Value "+decimal+" is out of bounds", left, right);
        }
    }

    public _Value(boolean booleanValue, int left, int right) {
        super(left, right);
        this.booleanValue = booleanValue;
        type = Types.NULL;
    }

    public _Value(char character, int left, int right) {
        super(left, right);
        if (checkChar(character)) {
            this.characterValue = character;
            type = Types.CHAR;
        } else{
            type = Types.NULL;
            eh.addError(ErrorPhase.Semantic, "Value "+character+" is out of bounds", left, right);
        }

    }

    public _Value(String id, _Index index, int left, int right) {
        super(left, right);
        this.id = id;
        Description description = st.get(id);
        
        //mirar que exista descripcion el id
        if(description == null){
            eh.addError(ErrorPhase.Semantic, "Inexistent array: "+id, left, right);
            type = Types.NULL;
            return;
        }
        
        //mirar que sea una descripcion de Tipo
        if(!(description instanceof TypeDescription)){
            eh.addError(ErrorPhase.Semantic, "Inexistent array: "+id, left, right);
            type = Types.NULL;
            return;
        }
        
        if(((TypeDescription)description).getType() == Types.NULL){
            this.type = Types.NULL;
            return;
        }
        
        //Comprobar que las dimensiones indexadas coincidne con las declaradas
        int i;
        for( i = st.first(id); i != 0 && index != null; i = st.next(i)){
            IndexDescription indexDescription = st.check(i);
            
            if(index.getDecimal() >= 0){
                if(index.getDecimal() >= indexDescription.getLength()){
                    eh.addError(ErrorPhase.Semantic, "Value "+index.getDecimal()+" is out of bounds", left, right);
                    type = Types.NULL;
                    return;
                }
            } else if(index.getDecimal() == -1 && index.getId() == null){
                type = Types.NULL;
                return;
                
            } else{
                type = Types.NULL;
                return;
            }
            
            index = index.getNext();
        }
        
        if(index.getNext() != null){
            eh.addError(ErrorPhase.Semantic, "Invalid indexed dimentions", left, right);
            type = Types.NULL;
            return;
        }
        
        if(i != 0){
            eh.addError(ErrorPhase.Semantic, "Invalid indexed dimentions", left, right);
            type = Types.NULL;
            return;
        }
        
        type = ((TypeDescription)description).getType();
    }

    public _Value(String id, int left, int right) {
        super(left, right);
        
        Description description = st.get(id);
        if (description != null) {
            if (description instanceof ConstantDescription) {
                type = ((ConstantDescription) description).getType();
            } else if (description instanceof VariableDescription) {
                type = ((VariableDescription) description).getType();
            } else {
                eh.addError(ErrorPhase.Semantic, "Inexistent variable: "+id, left, right);
                type = Types.NULL;
                return;
            }
            if(type == Types.NULL){
                return;
            }

        } else {
            eh.addError(ErrorPhase.Semantic, "Inexistent variable: "+id, left, right);
            type = Types.NULL;
            return;
        }
        
        this.id = id;
    }
    
    //READ
    public _Value(int left, int right){
        super(left, right);
        this.type = Types.CHAR;
    }

    public char getCharacterValue() {
        return characterValue;
    }

    public boolean getBooleanValue() {
        return booleanValue;
    }

    public int getDecimalValue() {
        return decimalValue;
    }

    public Types getType() {
        return type;
    }

}
