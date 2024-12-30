package nodes;

import intermediateCode.Function;
import intermediateCode.Instruction;
import intermediateCode.Operations;
import intermediateCode.Tag;
import java.util.LinkedList;
import static nodes.Node.eh;
import static nodes.Node.st;
import utils.ErrorPhase;
import utils.OpType;
import utils.Types;
import utils.description.ArgumentDescription;
import utils.description.ProcedureDescription;

public class _Function extends Node {

    private Types type;
    private _FunctionHead functionHead;
    private _FunctionBody functionBody;

    public _Function(_FunctionHead functionHead, _FunctionBody functionBody, int left, int right) {
        super(left, right);

        ProcedureDescription description = (ProcedureDescription)st.get(functionHead.getId());
        this.type = functionHead.getType();
        boolean found = false;

        _FunctionBody funcBody = functionBody;
        
        while (funcBody != null) {
            _Instruction instr = funcBody.getInstruction();
            if (instr.getOpType() == OpType.RETURN_EXPRESSION) {
                _Expression exp = instr.getReturnExpression();

                if (exp.getType() != type) {
                    eh.addError(ErrorPhase.Semantic, "Function type does not match return type", exp.getLine(), exp.getColumn());
                    this.type = Types.NULL;
                    description.setType(Types.NULL);
                    return;
                }
                found = true;
            }
            if(instr.getOpType() == OpType.RETURN && type != Types.VOID){
                    eh.addError(ErrorPhase.Semantic, "Function type does not match return type", instr.getLine(), instr.getColumn());
                    this.type = Types.NULL;
                    description.setType(Types.NULL);
                    return;
            }
            
            if(instr.getOpType() == OpType.RETURN && type == Types.VOID){
                found = true;
            }

            funcBody = funcBody.getNext();
        }

        if (!found) {
            eh.addError(ErrorPhase.Semantic, "No return statement found", line, column);
            this.type = Types.NULL;
            description.setType(Types.NULL);
            return;
        }
        this.functionHead = functionHead;
        this.functionBody = functionBody;
    }
    
    public void generate(){
        Function fun = functionHead.generate();
        
        tac.put(new Instruction(Operations.SKIP, null, null, fun.getStart()));
        tac.put(new Instruction(Operations.PMB, null, null, fun));
        if(functionBody != null){
            functionBody.generate();
        }
        //tac.put(new Instruction(Operations.RTN, null, null, fun));
        st.exitBlock();
        
        tac.recalculate();
    }

}
