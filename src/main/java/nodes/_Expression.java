package nodes;

import intermediateCode.Instruction;
import intermediateCode.Operations;
import intermediateCode.Tag;
import intermediateCode.Variable;
import utils.ErrorPhase;
import utils.OpArit;
import utils.OpComp;
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

        if (value.getType() == Types.NULL || expression.getType() == Types.NULL) {
            this.type = Types.NULL;
            return;
        }

        if (operation.getOplog() != null) {
            //Verificar que ambos son bool
            if (value.getType() != Types.BOOL || expression.getType() != Types.BOOL) {
                Types temp = value.getType();
                if (temp == Types.BOOL) {
                    temp = expression.getType();
                }
                eh.addError(ErrorPhase.Semantic, "Logical operands must be of type boolean", left, right);
                type = Types.NULL;
                return;
            }
            type = Types.BOOL;
        } else if (operation.getOparit() != null) {
            //Verificar que ambos son Int
            if (value.getType() != Types.INT || expression.getType() != Types.INT) {
                Types temp = value.getType();
                if (temp == Types.INT) {
                    temp = expression.getType();
                }
                eh.addError(ErrorPhase.Semantic, "Arithmetic operands must be of type integer", left, right);
                type = Types.NULL;
                return;
            }
            type = Types.INT;
        } else if (operation.getOpcomp() != null) {
            //Verificar que se puede usar la operacion de comparacion
            if (value.getType() != expression.getType()) {
                eh.addError(ErrorPhase.Semantic, "Comparative operands must be of same type", left, right);
                type = Types.NULL;
                return;
            }
            type = Types.BOOL;
        } else {
            eh.addError(ErrorPhase.Semantic, "FATAL ERROR _Expression", left, right);
            type = Types.NULL;
            return;
        }

        this.value = value;
        this.operation = operation;
        this.expression = expression;
    }

    public _Expression(_Expression expression, OpArit operation, int left, int right) {
        super(left, right);
        if (expression.getType() == Types.NULL) {
            this.type = Types.NULL;
            return;
        }

        if (expression.getType() != Types.INT) {
            eh.addError(ErrorPhase.Semantic, "Arithmetic negation operand must be of type integer", left, right);
            type = Types.NULL;
            return;
        }

        if (operation == OpArit.SUB) {
            changeSign = true;
        } else if (operation == OpArit.SUM) {
            //skip this
        } else {
            eh.addError(ErrorPhase.Semantic, "Unexpected operand", left, right);
            type = Types.NULL;
            return;
        }

        type = Types.INT;
        this.expression = expression;
    }

    public _Expression(_Value value, int left, int right) {
        super(left, right);
        if (value.getType() == Types.NULL) {
            this.type = Types.NULL;
            return;
        }

        this.value = value;
        type = value.getType();
    }

    public Types getType() {
        return type;
    }

    public Variable generate() {
        Variable var = new Variable();
        //paso de valor simple
        if (expression == null) {
           tac.put(new Instruction(Operations.COPY, value.generate(), null, var)); //REVISAR
        } else {
            if (value == null) {//cambio de simbolo
                if(operation.getOparit() == OpArit.SUM){
                    tac.put(new Instruction(Operations.COPY, value.generate(), null, var));
                } else{
                    tac.put(new Instruction(Operations.NEG, expression.generate(), null, var));
                }
            } else if(operation.getOparit() != null || operation.getOplog() != null){//operacion normal arit o logi
                tac.put(new Instruction(getOperation(), expression.generate(), value.generate(), var));
            } else if(operation.getOpcomp() != null){ //operacion comp
                Tag e1 = new Tag();
                Tag e2 = new Tag();
                tac.put(new Instruction(getOperation(), value.generate(), expression.generate(), e1));
                tac.put(new Instruction(Operations.COPY, 0, var));
                tac.put(new Instruction(Operations.GOTO, null, null, e2));
                tac.put(new Instruction(Operations.SKIP, null, null, e1));
                tac.put(new Instruction(Operations.COPY, -1, var));
                tac.put(new Instruction(Operations.SKIP, null, null, e2));
                
            }
        }

        return var;
    }

    private Operations getOperation() {
        if (operation.getOparit() != null) {
            switch (operation.getOparit()) {
                case SUM:
                    return Operations.SUM;
                case SUB:
                    return Operations.SUB;
                case MUL:
                    return Operations.PROD;
                case DIV:
                    return Operations.DIV;
                case MOD:
                    return Operations.MOD;
                default:
                    throw new IllegalArgumentException("Invalid arithmetic operation");
            }
        } else if (operation.getOpcomp() != null) {
            switch (operation.getOpcomp()) {
                case EQUAL:
                    return Operations.IFEQ;
                case LESS_THAN:
                    return Operations.IFLT;
                case GREATER_THAN:
                    return Operations.IFGT;
                case LESS_EQUAL_THAN:
                    return Operations.IFLE;
                case GREATER_EQUAL_THAN:
                    return Operations.IFGE;
                case DIFFERENT:
                    return Operations.IFNE;
                default:
                    throw new IllegalArgumentException("Invalid comparison operation");
            }
        } else if (operation.getOplog() != null) {
            switch (operation.getOplog()) {
                case AND:
                    return Operations.AND;
                case OR:
                    return Operations.OR;
                default:
                    throw new IllegalArgumentException("Invalid logical operation");
            }
        }
        throw new IllegalArgumentException("No valid operation found");
    }
}
