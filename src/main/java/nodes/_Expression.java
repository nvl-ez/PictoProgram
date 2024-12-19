package nodes;

import utils.ErrorTypes;
import utils.OpArit;
import utils.OpLog;
import utils.Types;

public class _Expression extends Node {

    private _Value value;
    private _Operation operation;
    private _Expression expression;
    private Types type;
    private boolean changeSign = false;

    public _Expression(_Value value, _Operation operation, _Expression expression, int left, int right) {
        super(left, right);
        
        if(value.getType() == Types.NULL || expression.getType() == Types.NULL){
            this.type = Types.NULL;
            return;
        }
        
        if(operation.getOplog() != null){
            //Verificar que ambos son bool
            if(value.getType() != Types.BOOL ||expression.getType() != Types.BOOL){
                Types temp = value.getType();
                if(temp == Types.BOOL){
                    temp = expression.getType();
                }
                eh.addError(ErrorTypes.INVALID_TYPE, Types.BOOL, temp, line, column);
                type = Types.NULL;
                return;
            }
            type = Types.BOOL;
        } else if(operation.getOparit() != null){
            //Verificar que ambos son Int
            if(value.getType() != Types.INT ||expression.getType() != Types.INT){
                Types temp = value.getType();
                if(temp == Types.INT){
                    temp = expression.getType();
                }
                eh.addError(ErrorTypes.INVALID_TYPE, Types.INT, temp, line, column);
                type = Types.NULL;
                return;
            }
            type = Types.BOOL;
        } else if(operation.getOpcomp() != null){
            //Verificar que se puede usar la operacion de comparacion
            if(value.getType() != expression.getType()){
                eh.addError(ErrorTypes.INVALID_TYPE, value.getType(), expression.getType(), line, column);
                type = Types.NULL;
                return;
            }
            type = Types.BOOL;
        } else{
            eh.addError(ErrorTypes.UNHANDLED_ERROR, "", line, column);
            type = Types.NULL;
            return;
        }
        
        this.value = value;
        this.operation = operation;
        this.expression = expression;
    }
    
    public _Expression(_Expression expression, OpArit operation, int left, int right) {
        super(left, right);
        if(expression.getType() == Types.NULL){
            this.type = Types.NULL;
            return;
        }
        
        if(expression.getType() != Types.INT){
            eh.addError(ErrorTypes.INVALID_TYPE, expression.getType(), type, line, column);
            type = Types.NULL;
            return;
        }
        
        if(operation == OpArit.SUB){
            changeSign = true;
        } else if(operation == OpArit.SUM){
            //skip this
        } else{
            eh.addError(ErrorTypes.INVALID_OPERATION, "", line, column);
            type = Types.NULL;
            return;
        }
        
        type = Types.INT;
        this.expression = expression;
    }
    
    public _Expression(_Value value, int left, int right) {
        super(left, right);
        if(value.getType() == Types.NULL){
            this.type = Types.NULL;
            return;
        }
        
        this.value = value;
        type = value.getType();
    }

    public Types getType() {
        return type;
    }

}
