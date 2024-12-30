package nodes;

import intermediateCode.Instruction;
import intermediateCode.Operations;
import intermediateCode.Variable;
import utils.ErrorPhase;
import utils.Types;
import utils.description.ConstantDescription;
import utils.description.Description;
import utils.description.IndexDescription;
import utils.description.ProcedureDescription;
import utils.description.TACDescription;
import utils.description.TypeDescription;
import utils.description.VariableDescription;

public class _Value extends Node {

    private String id = null;
    private Character characterValue = null;
    private Boolean booleanValue = null;
    private Integer decimalValue = null;
    private _Expression expression = null;
    private _FunctionCall functionCall = null;
    private Types type = Types.NULL;
    private _Index index = null;
    
    //Llamada a funcion
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
    
    //Expression
    public _Value(_Expression expression, int left, int right) {
        super(left, right);
        this.expression = expression;
        type = expression.getType();
    }
    
    //Literal int
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
    //Literal bool
    public _Value(boolean booleanValue, int left, int right) {
        super(left, right);
        this.booleanValue = booleanValue;
        type = Types.NULL;
    }

    //Literal char
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
    
    //Valor en array
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
        _Index ind = index;
        for( i = st.first(id); i != 0 && ind != null; i = st.next(i)){
            IndexDescription indexDescription = st.check(i);
            
            if(ind.getDecimal() >= 0){
                if(ind.getDecimal() >= indexDescription.getLength()){
                    eh.addError(ErrorPhase.Semantic, "Value "+ind.getDecimal()+" is out of bounds", left, right);
                    type = Types.NULL;
                    return;
                }
            } else if(ind.getDecimal() == -1 && ind.getId() == null){
                type = Types.NULL;
                return;
                
            } else{
                type = Types.NULL;
                return;
            }
            
            ind = ind.getNext();
        }
        
        if(ind != null){
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
        this.index = index;
    }
    
    //Variable
    public _Value(String id, int left, int right) {
        super(left, right);
        
        Description description = st.get(id);
        if (description != null) {
            if (description instanceof ConstantDescription) {
                type = ((ConstantDescription) description).getType();
                characterValue = ((ConstantDescription) description).getCharacterValue();
                decimalValue = ((ConstantDescription) description).getDecimalValue();
                booleanValue = ((ConstantDescription) description).getBooleanValue();
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
    
    public Variable generate(){
        Variable var = null;
        if(characterValue != null){
            var  = new Variable(1, false);
            tac.put(new Instruction(Operations.COPY, (int)characterValue, var));
        } else if(decimalValue != null){
            var  = new Variable(1, false);
            tac.put(new Instruction(Operations.COPY, decimalValue, var));
        } else if(booleanValue != null){
            var  = new Variable(1, false);
            tac.put(new Instruction(Operations.COPY, (booleanValue ? -1 : 0), var));
        } else if(expression != null){
            var = expression.generate();
        } else if(functionCall != null){//Function
            var  = new Variable(1, false);
            tac.put(new Instruction(Operations.POP, functionCall.generate(), null, var));
            
        } else if(index != null && id != null){//Array
            var = new Variable(1, false);
            
            TACDescription arrDesc = (TACDescription)st.get(id);
            Variable i = index.generate(arrDesc.getSizes(), 0);
            
            tac.put(new Instruction(Operations.IND_VAL, arrDesc.getVariable(), i, var));
         
        } else if(id != null  && index == null){//Variable
            return ((TACDescription)st.get(id)).getVariable();
        } else{ //Read----------------------------------------------------------------------------------
            var = new Variable(1, false);
            tac.put(new Instruction(Operations.READ, null, null, var));
        }
        
        return var;
    }

}
