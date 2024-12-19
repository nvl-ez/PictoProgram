
package nodes;


public class _FunctionBody extends Node {
    private _Instruction instruction;
    private _FunctionBody functionBody;
    
    public _FunctionBody(_Instruction instruction, _FunctionBody functionBody, int left, int right) {
        super(left, right);
        this.instruction = instruction;
        this.functionBody = functionBody;
    }
    
    public _FunctionBody getNext(){
        return functionBody;
    }
    
    public _Instruction getInstruction(){
        return instruction;
    }
    
}
