package nodes;

import intermediateCode.Function;
import intermediateCode.Instruction;
import intermediateCode.Operations;
import intermediateCode.Variable;
import java.util.Iterator;
import java.util.LinkedList;
import static nodes.Node.eh;
import utils.ErrorPhase;
import utils.Types;
import utils.description.ArgumentDescription;
import utils.description.Description;
import utils.description.IndexDescription;
import utils.description.ProcedureDescription;
import utils.description.TACDescription;

public class _FunctionCall extends Node {

    private String id;
    private _FunCallArgs funCallArgs;
    private Types type;

    public _FunctionCall(String id, _FunCallArgs funCallArgs, int left, int right) {
        super(left, right);

        Description description = st.get(id);

        if (description == null) {
            eh.addError(ErrorPhase.Semantic, "Inexistent function: "+id, left, right);
            type = Types.NULL;
            return;
        }

        if (description instanceof ProcedureDescription == false) {
            eh.addError(ErrorPhase.Semantic, "Inexistent function: "+id, left, right);
            type = Types.NULL;
            return;
        } else if (((ProcedureDescription) description).getType() == Types.NULL) {
            type = Types.NULL;
            return;
        }

        _FunCallArgs arg = funCallArgs;
        int i;
        //Check arguments:
        for (i = st.first(id); i != 0 && arg != null; i = st.next(i)) {
            ArgumentDescription argDesc = st.checkArg(i);

            if (arg.getType() == Types.NULL || argDesc.getType() == Types.NULL) {
                this.type = Types.NULL;
                ((ProcedureDescription) description).setType(Types.NULL);
                return;
            }
            if (argDesc.getType() != arg.getType()) {
                eh.addError(ErrorPhase.Semantic, "Unmatching types for argument: "+argDesc.getId(), left, right);
                this.type = Types.NULL;
                ((ProcedureDescription) description).setType(Types.NULL);
                return;
            }

            if (argDesc.getDimentions() != null) {//es un array
                if (arg.getId() == null) {
                    eh.addError(ErrorPhase.Semantic, "Inexistent array: "+argDesc.getId(), left, right);
                    this.type = Types.NULL;
                    ((ProcedureDescription) description).setType(Types.NULL);
                    return;
                }

                int j = st.first(arg.getId());

                LinkedList<Integer> dimentions = argDesc.getDimentions();
                Iterator<Integer> iter = dimentions.descendingIterator();

                while (iter.hasNext() && j != 0) {
                    IndexDescription indDesc = st.check(j);
                    int length = iter.next();

                    if (length != indDesc.getLength()) {
                        eh.addError(ErrorPhase.Semantic, "Invalid dimention length", left, right);
                        this.type = Types.NULL;
                        ((ProcedureDescription) description).setType(Types.NULL);
                        return;
                    }
                    j = st.next(j);
                }

                if (iter.hasNext() || j != 0) {
                    eh.addError(ErrorPhase.Semantic, "Invalid indexed dimentions", left, right);
                    this.type = Types.NULL;
                    ((ProcedureDescription) description).setType(Types.NULL);
                    return;
                }
            }

            arg = arg.getNext();
        }

        if (i != 0 || arg != null) {
            eh.addError(ErrorPhase.Semantic, "Invalid argument number", left, right);
            this.type = Types.NULL;
            ((ProcedureDescription) description).setType(Types.NULL);
            return;
        }

        //Finish
        this.type = ((ProcedureDescription) description).getType();
        this.id = id;
        this.funCallArgs = funCallArgs;
    }

    public String getId() {
        return id;
    }
    
    public void generate(){
        Function fun = ((TACDescription)st.get(id)).getFunction();
        if(funCallArgs == null){
            tac.put(new Instruction(Operations.CALL, null, null, fun));
        } else {
            funCallArgs.generate(fun.getArgs(), 0);
            tac.put(new Instruction(Operations.CALL, null, null, fun));
        }
    }

}
