package nodes;

import static nodes.Node.eh;
import utils.ErrorPhase;
import utils.Types;
import utils.description.Description;
import utils.description.VariableDescription;

public class _VarDeclaration extends Node {

    private Types type;
    private String id;
    private _AssignationPart assignationPart;

    public _VarDeclaration(Types type, String id, _AssignationPart assignationPart, int left, int right) {
        super(left, right);
        
        if (type == Types.VOID) {
            this.type = Types.NULL;
            eh.addError(ErrorPhase.Semantic, "Variables cannot be of type void", left, right);
            st.put(new VariableDescription(id, Types.NULL));
            return;
        }
        
        //verificar que la asignacion es valida.
        if (assignationPart != null) {
            Types assignationType = assignationPart.getExpression().getType();

            if (assignationType != type) {
                eh.addError(ErrorPhase.Semantic, "Invalid type assignation for variable: "+id, left, right);
                this.type = Types.NULL;
                st.put(new VariableDescription(id, Types.NULL));
                return;
            }
        }

        if (!st.put(new VariableDescription(id, type))) {
            eh.addError(ErrorPhase.Semantic, "Identifier '" + id + "' already in use", left, right);
            this.type = Types.NULL;
            return;
        }

        this.type = type;
        this.id = id;
        this.assignationPart = assignationPart;
    }

}
