
package nodes;

import utils.ErrorPhase;
import utils.OpType;
import utils.Types;
import utils.description.Description;
import utils.description.TypeDescription;
import utils.description.VariableDescription;


public class _Instruction extends Node{
    private _Expression expression1;
    private _FunctionBody functionBody;
    private _Else _else;
    private _Declaration declaration;
    private _FunctionCall functionCall;
    private _Assignation assignation;
    private _VarDeclaration varDeclaration;
    private String id;
    private _Expression expression2;
    private _Expression expression3;
    private _Expression expression4;
    private OpType opType = null;
    
    
    //For Opif
    public _Instruction(_Expression expression, _FunctionBody functionBody, _Else _else, int left, int right) {
        super(left, right);
        
        if(expression.getType() == Types.NULL){
            return;
        }
        
        if(expression.getType() != Types.BOOL){
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
        
        if(expression.getType() == Types.NULL){
            return;
        }
        
        if(expression.getType() != Types.BOOL){
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
        
        if(expression.getType() == Types.NULL){
            return;
        }
        
        if(expression.getType() != Types.BOOL){
            eh.addError(ErrorPhase.Semantic, "Condition evaluation does not result in a boolean", left, right);
            return;
        }
        
        Description desc = st.get(id);
        if(desc == null ||desc instanceof VariableDescription == false){
            eh.addError(ErrorPhase.Semantic, "Inexistent variable: "+id, left, right);
            return;
        }
        
        if(((VariableDescription)desc).getType() != Types.INT){
            eh.addError(ErrorPhase.Semantic, "Variable '"+id+"' is not of type integer", left, right);
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
        if(desc == null ||(desc instanceof VariableDescription) == false){
            eh.addError(ErrorPhase.Semantic, "Inexistent variable: "+id, left, right);
            return;
        }
        
        if(((VariableDescription)desc).getType() != Types.INT){
            eh.addError(ErrorPhase.Semantic, "Variable '"+id+"' is not of type integer", left, right);
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
        
        if(expression1.getType() == Types.NULL ||expression2.getType() == Types.NULL||expression3.getType() == Types.NULL||expression4.getType() == Types.NULL){
            return;
        }
        
        Description desc = st.get(id);
        if(desc == null){
            eh.addError(ErrorPhase.Semantic, "Inexistent array: "+id, left, right);
            return;
        }
        if((desc instanceof TypeDescription) == false){
            eh.addError(ErrorPhase.Semantic, "Variable '"+id+"' is not of type char array", left, right);
            return;
        }
        
        if(((TypeDescription)desc).getType() != Types.CHAR ){
            eh.addError(ErrorPhase.Semantic, "Variable '"+id+"' is not of type char array", left, right);
            return;
        }
        
        if(expression1.getType() != Types.INT){
            eh.addError(ErrorPhase.Semantic, "Index begin is not a number", left, right);
            return;
        }
        
        if(expression2.getType() != Types.INT){
            eh.addError(ErrorPhase.Semantic, "Index end is not a number", left, right);
            return;
        }
        
        if(expression3.getType() != Types.INT){
            eh.addError(ErrorPhase.Semantic, "Column is not a number", left, right);
            return;
        }
        
        if(expression4.getType() != Types.INT){
            eh.addError(ErrorPhase.Semantic, "Row is not a number", left, right);
            return;
        }
        
        //Verify length and dimentions of array;
        TypeDescription arr = (TypeDescription)desc;
        
        if(arr.getType()==Types.NULL){
            return;
        }
        
        int i = st.first(arr.getId());
        if(st.next(i)!=0){
            eh.addError(ErrorPhase.Semantic, "Invalid indexed dimentions", left, right);
            return;
        }
        
        if(st.check(i).getLength() != 256){
            eh.addError(ErrorPhase.Semantic, "Invalid dimention length: Length 256 expected for function 'Write'", left, right);
        }
        
        
        this.id = id;
        this.expression1 = expression1;
        this.expression2 = expression2;
        this.expression3 = expression3;
        this.expression4 = expression4;
        opType = OpType.WRITE;
    }
    
    public OpType getOpType(){
        return opType;
    }
    
    public _Expression getReturnExpression(){
        return expression1;
    }

}
