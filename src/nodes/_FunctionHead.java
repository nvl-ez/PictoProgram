package nodes;

import intermediateCode.Function;
import intermediateCode.Tag;
import intermediateCode.Variable;
import java.util.LinkedList;
import static nodes.Node.eh;
import static nodes.Node.st;
import utils.ErrorPhase;
import utils.Types;
import utils.description.ArgumentDescription;
import utils.description.ProcedureDescription;
import utils.description.TACDescription;

public class _FunctionHead extends Node {

    private String id;
    private _FunctionArgs functionArgs = null;
    private Types type = Types.NULL;

    public _FunctionHead(Types type, String id, _FunctionArgs functionArgs, int left, int right) {
        super(left, right);
        this.type = type;
        ProcedureDescription description = new ProcedureDescription(id, type);
        
        if (!st.put(description)) {
            eh.addError(ErrorPhase.Semantic, "Identifier '" + id + "' already in use", left, right);
            this.type = Types.NULL;
            description.setType(Types.NULL);
            return;
        }

        if (functionArgs != null) {
            _FunctionArgsList args = functionArgs.getFunctionArgsList();

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

                    if (!st.putParam(id, new ArgumentDescription(argsId, arrType, dimentionList))) {
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

                    if (!st.putParam(id, new ArgumentDescription(argsId, argsType))) {
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
        
        this.id = id;
        this.functionArgs = functionArgs;
        
        //enter block to add arguments
        st.enterBlock();
        if (functionArgs != null) {
            functionArgs.getFunctionArgsList().addArguments();
        }
    }

    public String getId() {
        return id;
    }

    public _FunctionArgs getArgs() {
        return functionArgs;
    }
    
    public Types getType(){
        return type;
    }

    public Function generate() {
        Tag ei = new Tag();
        Function fun = new Function(ei);
        st.put(new TACDescription(id, fun));

        st.enterBlock();
        
        if (functionArgs != null && functionArgs.getFunctionArgsList() != null) {
            functionArgs.getFunctionArgsList().generate(fun);
        }
        
        return fun;
    }
    

}
