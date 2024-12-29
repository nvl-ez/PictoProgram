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

    public _Function(Types type, _FunctionHead functionHead, _FunctionBody functionBody, int left, int right) {
        super(left, right);

        ProcedureDescription description = new ProcedureDescription(functionHead.getId(), type);

        if (!st.put(description)) {
            eh.addError(ErrorPhase.Semantic, "Identifier '" + functionHead.getId() + "' already in use", left, right);
            this.type = Types.NULL;
            description.setType(Types.NULL);
            return;
        }

        if (functionHead.getArgs() != null) {
            _FunctionArgsList args = functionHead.getArgs().getFunctionArgsList();

            while (args != null) {
                //es una array
                if (args.getTypeDimentions() != null) {
                    String argsId = args.getId();
                    Types arrType = args.getTypeDimentions().getType();

                    if (arrType == Types.VOID) {
                        eh.addError(ErrorPhase.Semantic, "Arrays cannot be of type void", left, right);
                        this.type = Types.NULL;
                        return;
                    }

                    _DimentionSizes dimentions = args.getTypeDimentions().getDimentions();

                    LinkedList<Integer> dimentionList = new LinkedList<Integer>();

                    while (dimentions != null) {
                        dimentionList.add(dimentions.getDecimal());
                        dimentions = dimentions.getNext();
                    }

                    if (!st.putParam(functionHead.getId(), new ArgumentDescription(argsId, arrType, dimentionList))) {
                        eh.addError(ErrorPhase.Semantic, "Identifier '" + argsId + "' already in use", left, right);
                        this.type = Types.NULL;
                        return;
                    }

                } else if (args.getType() != null) { //es una variable
                    Types argsType = args.getType();
                    String argsId = args.getId();

                    if (argsType == Types.VOID) {
                        eh.addError(ErrorPhase.Semantic, "Variables cannot be of type void", left, right);
                        this.type = Types.NULL;
                        return;
                    }

                    if (!st.putParam(functionHead.getId(), new ArgumentDescription(argsId, argsType))) {
                        eh.addError(ErrorPhase.Semantic, "Identifier '" + argsId + "' already in use", left, right);
                        this.type = Types.NULL;
                        return;
                    }

                } else {
                    eh.addError(ErrorPhase.Semantic, "FATAL ERROR _Function", left, right);
                    this.type = Types.NULL;
                    description.setType(Types.NULL);
                    return;
                }
                
                args = args.next();
            }
        }

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

        if (!found && type != Types.VOID) {
            eh.addError(ErrorPhase.Semantic, "No return statement found", line, column);
            this.type = Types.NULL;
            description.setType(Types.NULL);
            return;
        }

        this.type = type;
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
