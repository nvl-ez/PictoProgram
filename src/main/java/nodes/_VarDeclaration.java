package nodes;

import utils.ErrorTypes;
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
            eh.addError(ErrorTypes.INVALID_TYPE, Types.VOID, null, line, column);
            st.put(new VariableDescription(id, Types.NULL));
            return;
        }
        
        //verificar que la asignacion es valida.
        if (assignationPart != null) {
            Types assignationType = assignationPart.getExpression().getType();

            if (assignationType != type) {
                eh.addError(ErrorTypes.INVALID_TYPE, type, assignationType, line, column);
                this.type = Types.NULL;
                st.put(new VariableDescription(id, Types.NULL));
                return;
            }
        }

        if (!st.put(new VariableDescription(id, type))) {
            eh.addError(ErrorTypes.DUPLICATED_NAMES, id, line, column);
            this.type = Types.NULL;
            return;
        }

        this.type = type;
        this.id = id;
        this.assignationPart = assignationPart;
    }

}
