package nodes;

import intermediateCode.Instruction;
import intermediateCode.Operations;
import intermediateCode.Tag;
import intermediateCode.Variable;
import utils.ErrorPhase;
import utils.OpType;
import utils.Types;
import utils.description.Description;
import utils.description.TACDescription;
import utils.description.TypeDescription;
import utils.description.VariableDescription;

public class _Instruction extends Node {

    private _Expression expression1 = null;
    private _FunctionBody functionBody = null;
    private _Else _else = null;
    private _Declaration declaration = null;
    private _FunctionCall functionCall = null;
    private _Assignation assignation = null;
    private _VarDeclaration varDeclaration = null;
    private String id = null;
    private _Expression expression2 = null;
    private _Expression expression3 = null;
    private _Expression expression4 = null;
    private OpType opType = null;

    //For Opif
    public _Instruction(_Expression expression, _FunctionBody functionBody, _Else _else, int left, int right) {
        super(left, right);

        if (expression.getType() == Types.NULL) {
            return;
        }

        if (expression.getType() != Types.BOOL) {
            eh.addError(ErrorPhase.Semantic, "Condition evaluation does not result in a boolean", left, right);
            return;
        }

        expression1 = expression;
        this.functionBody = functionBody;
        this._else = _else;
        opType = OpType.IF;
    }

    //For Opwhile
    public _Instruction(_Expression expression, _FunctionBody functionBody, int left, int right) {
        super(left, right);

        if (expression.getType() == Types.NULL) {
            return;
        }

        if (expression.getType() != Types.BOOL) {
            eh.addError(ErrorPhase.Semantic, "Condition evaluation does not result in a boolean", left, right);
            return;
        }

        expression1 = expression;
        this.functionBody = functionBody;
        opType = OpType.WHILE;
    }

    //For Declaration
    public _Instruction(_Declaration declaration, int left, int right) {
        super(left, right);
        this.declaration = declaration;
        opType = OpType.DECLARATION;
    }

    //For Return
    public _Instruction() {
        super(0, 0);
        opType = OpType.RETURN;
    }

    //For funcall
    public _Instruction(_FunctionCall functionCall, int left, int right) {
        super(left, right);
        this.functionCall = functionCall;
        opType = OpType.FUNCTION_CALL;
    }

    //for assign 
    public _Instruction(_Assignation assignation, int left, int right) {
        super(left, right);
        this.assignation = assignation;
        opType = OpType.ASSIGNATION;
    }

    //For return with expression
    public _Instruction(_Expression expression, int left, int right) {
        super(left, right);
        expression1 = expression;
        opType = OpType.RETURN_EXPRESSION;
    }

    //For opfor
    public _Instruction(_VarDeclaration varDeclaration, _Expression expression, String id, _FunctionBody functionBody, int left, int right) {
        super(left, right);

        if (expression.getType() == Types.NULL) {
            return;
        }

        if (expression.getType() != Types.BOOL) {
            eh.addError(ErrorPhase.Semantic, "Condition evaluation does not result in a boolean", left, right);
            return;
        }

        Description desc = st.get(id);
        if (desc == null || desc instanceof VariableDescription == false) {
            eh.addError(ErrorPhase.Semantic, "Inexistent variable: " + id, left, right);
            return;
        }

        if (((VariableDescription) desc).getType() != Types.INT) {
            eh.addError(ErrorPhase.Semantic, "Variable '" + id + "' is not of type integer", left, right);
            return;
        }

        this.varDeclaration = varDeclaration;
        expression1 = expression;
        this.id = id;
        this.functionBody = functionBody;
        opType = OpType.FOR;
    }

    //For Increment
    public _Instruction(String id, int left, int right) {
        super(left, right);

        Description desc = st.get(id);
        if (desc == null || (desc instanceof VariableDescription) == false) {
            eh.addError(ErrorPhase.Semantic, "Inexistent variable: " + id, left, right);
            return;
        }

        if (((VariableDescription) desc).getType() != Types.INT) {
            eh.addError(ErrorPhase.Semantic, "Variable '" + id + "' is not of type integer", left, right);
            return;
        }

        this.id = id;
        opType = OpType.INCREMENT;
    }

    //for write
    //Write (CharArr, IndexBegin, IndexEnd, Column, Row)
    //Array provided needs to be og length 256
    public _Instruction(String id, _Expression expression1, _Expression expression2, _Expression expression3, _Expression expression4, int left, int right) {
        super(left, right);

        if (expression1.getType() == Types.NULL || expression2.getType() == Types.NULL || expression3.getType() == Types.NULL || expression4.getType() == Types.NULL) {
            return;
        }

        Description desc = st.get(id);
        if (desc == null) {
            eh.addError(ErrorPhase.Semantic, "Inexistent array: " + id, left, right);
            return;
        }
        if ((desc instanceof TypeDescription) == false) {
            eh.addError(ErrorPhase.Semantic, "Variable '" + id + "' is not of type char array", left, right);
            return;
        }

        if (((TypeDescription) desc).getType() != Types.CHAR) {
            eh.addError(ErrorPhase.Semantic, "Variable '" + id + "' is not of type char array", left, right);
            return;
        }

        if (expression1.getType() != Types.INT) {
            eh.addError(ErrorPhase.Semantic, "Index begin is not a number", left, right);
            return;
        }

        if (expression2.getType() != Types.INT) {
            eh.addError(ErrorPhase.Semantic, "Index end is not a number", left, right);
            return;
        }

        if (expression3.getType() != Types.INT) {
            eh.addError(ErrorPhase.Semantic, "Column is not a number", left, right);
            return;
        }

        if (expression4.getType() != Types.INT) {
            eh.addError(ErrorPhase.Semantic, "Row is not a number", left, right);
            return;
        }

        //Verify length and dimentions of array;
        TypeDescription arr = (TypeDescription) desc;

        if (arr.getType() == Types.NULL) {
            return;
        }

        int i = st.first(arr.getId());
        if (st.next(i) != 0) {
            eh.addError(ErrorPhase.Semantic, "Invalid indexed dimentions", left, right);
            return;
        }

        if (st.check(i).getLength() != 256) {
            eh.addError(ErrorPhase.Semantic, "Invalid dimention length: Length 256 expected for function 'Write'", left, right);
        }

        this.id = id;
        this.expression1 = expression1;
        this.expression2 = expression2;
        this.expression3 = expression3;
        this.expression4 = expression4;
        opType = OpType.WRITE;
    }

    public OpType getOpType() {
        return opType;
    }

    public _Expression getReturnExpression() {
        return expression1;
    }

    public void generate() {
        switch (opType) {
            case IF:
                generate_IF();
                break;
            case WHILE:
                generate_WHILE();
                break;
            case DECLARATION:
                generate_DECLARATION();
                break;
            case FUNCTION_CALL:
                generate_FUNCTION_CALL();
                break;
            case ASSIGNATION:
                generate_ASSIGNATION();
                break;
            case RETURN_EXPRESSION:
                generate_RETURN_EXPRESSION();
                break;
            case RETURN:
                generate_RETURN();
                break;
            case FOR:
                generate_FOR();
                break;
            case INCREMENT:
                generate_INCREMENT();
                break;
            case WRITE:
                generate_WRITE();
                break;
            default:
                throw new IllegalArgumentException("Unhandled OpType: " + opType);
        }
    }

    private void generate_IF() {
        if (_else == null) {
            Variable exp = expression1.generate();

            Variable t1 = new Variable(1, false);
            tac.put(new Instruction(Operations.COPY, 0, t1));

            Tag e = new Tag();

            tac.put(new Instruction(Operations.IFEQ, exp, t1, e));
            if (functionBody != null) {
            functionBody.generate();
        }
            tac.put(new Instruction(Operations.SKIP, null, null, e));
        } else {
            Variable exp = expression1.generate();
            Tag e = new Tag();

            Variable t1 = new Variable(1, false);
            tac.put(new Instruction(Operations.COPY, 0, t1));

            tac.put(new Instruction(Operations.IFEQ, exp, t1, e));
            if (functionBody != null) {
            functionBody.generate();
        }

            Tag efi = new Tag();
            tac.put(new Instruction(Operations.GOTO, null, null, efi));
            tac.put(new Instruction(Operations.SKIP, null, null, e));
            _else.generate();
            tac.put(new Instruction(Operations.SKIP, null, null, efi));
        }
    }

    private void generate_WHILE() {
        Tag ei = new Tag();

        tac.put(new Instruction(Operations.SKIP, null, null, ei));

        Variable exp = expression1.generate();

        Tag efi = new Tag();

        Variable t1 = new Variable(1, false);
        tac.put(new Instruction(Operations.COPY, 0, t1));
        tac.put(new Instruction(Operations.IFEQ, exp, t1, efi));

        if (functionBody != null) {
            functionBody.generate();
        }

        tac.put(new Instruction(Operations.GOTO, null, null, ei));

        tac.put(new Instruction(Operations.SKIP, null, null, efi));
    }

    private void generate_DECLARATION() {
        declaration.generate();
    }

    private void generate_FUNCTION_CALL() {
        tac.put(new Instruction(Operations.POP, functionCall.generate(), null, null));
    }

    private void generate_ASSIGNATION() {
        assignation.generate();
    }

    private void generate_RETURN_EXPRESSION() {
        tac.put(new Instruction(Operations.RTN, null, null, expression1.generate()));
    }

    private void generate_RETURN() {
        tac.put(new Instruction(Operations.RTN, null, null, null));
    }

    private void generate_FOR() {
        varDeclaration.generate();

        Tag ei = new Tag();

        tac.put(new Instruction(Operations.SKIP, null, null, ei));

        Variable exp = expression1.generate();

        Tag efi = new Tag();

        Variable t1 = new Variable(1, false);
        tac.put(new Instruction(Operations.COPY, 0, t1));
        tac.put(new Instruction(Operations.IFEQ, exp, t1, efi));

        if (functionBody != null) {
            functionBody.generate();
        }

        TACDescription desc = (TACDescription) st.get(id);
        tac.put(new Instruction(Operations.INC, null, null, desc.getVariable()));

        tac.put(new Instruction(Operations.GOTO, null, null, ei));

        tac.put(new Instruction(Operations.SKIP, null, null, efi));
    }

    private void generate_INCREMENT() {
        TACDescription desc = (TACDescription) st.get(id);
        tac.put(new Instruction(Operations.INC, null, null, desc.getVariable()));
    }

    private void generate_WRITE() {
        Variable arr = ((TACDescription) st.get(id)).getVariable();

        tac.put(new Instruction(Operations.POS, expression3.generate(), expression4.generate(), null));
        tac.put(new Instruction(Operations.WRITE, expression1.generate(), expression2.generate(), arr));
    }

}
