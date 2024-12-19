package nodes;

import static nodes.Node.eh;
import static nodes.Node.st;
import utils.ErrorTypes;
import utils.Types;
import utils.description.IndexDescription;
import utils.description.TypeDescription;
import utils.description.VariableDescription;



public class _FunctionArgsList extends Node{
    private _FunctionArgsList functionArgList;
    private _TypeDimentions typeDimentions;
    private Types type;
    private String id;
    
    public _FunctionArgsList(_FunctionArgsList functionArgList, Types type, String id, int left, int right) {
        super(left, right);
        
        VariableDescription description = new VariableDescription(id, type);
        
        if(!st.put(description)){
            this.type = Types.NULL;
            eh.addError(ErrorTypes.DUPLICATED_NAMES, id, line, column);
            return;
        }
        
        if(type == Types.VOID){
            this.type = Types.NULL;
            description.setType(Types.NULL);
            eh.addError(ErrorTypes.INVALID_OPERATION, Types.VOID, null, line, column);
            return;
        }
        
        this.functionArgList = functionArgList;
        this.type = type;
        this.id = id;
    }
    
    public _FunctionArgsList(_FunctionArgsList functionArgList, _TypeDimentions typeDimentions, String id, int left, int right) {
        super(left, right);
        Types type = typeDimentions.getType();
        
        
        TypeDescription description = new TypeDescription(id, typeDimentions.getType());
        if(!st.put(description)){
            this.type = Types.NULL;
            eh.addError(ErrorTypes.DUPLICATED_NAMES, id, line, column);
            return;
        }
        
        if(type == Types.VOID){
            this.type = Types.NULL;
            description.setType(Types.NULL);
            eh.addError(ErrorTypes.INVALID_OPERATION, Types.VOID, null, line, column);
            return;
        }
        
        _DimentionSizes dimentions = typeDimentions.getDimentions();
        
        _DimentionSizes i = dimentions;
        while(i!= null){
            if(!checkInt(i.getDecimal()) || i.getDecimal() <= 0){
                this.type = Types.NULL;
                description.setType(Types.NULL);
                eh.addError(ErrorTypes.VALUE_OUT_OF_BOUNDS, i.getDecimal(), line, column);
                return;
            }
            i = i.getNext();
        }
        
        i = dimentions;
        
        while(dimentions!= null){
            IndexDescription indexDescription = new IndexDescription(i.getDecimal());
            if(!st.putIndex(id, indexDescription)){
                this.type = Types.NULL;
                description.setType(Types.NULL);
                eh.addError(ErrorTypes.NOT_ARRAY, id, line, column);
                return;
            }
        }
        
        this.functionArgList = functionArgList;
        this.typeDimentions = typeDimentions;
        this.id = id;
    }

    public _FunctionArgsList getNext() {
        return functionArgList;
    }

    public _TypeDimentions getTypeDimentions() {
        return typeDimentions;
    }

    public Types getType() {
        return type;
    }

    public String getId() {
        return id;
    }
    
    

}
