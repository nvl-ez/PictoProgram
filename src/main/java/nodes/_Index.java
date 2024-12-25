package nodes;

import intermediateCode.Instruction;
import intermediateCode.Operations;
import intermediateCode.Variable;
import java.util.LinkedList;
import static nodes.Node.eh;
import utils.ErrorPhase;
import utils.Types;
import utils.description.ConstantDescription;
import utils.description.Description;
import utils.description.TACDescription;
import utils.description.VariableDescription;

public class _Index extends Node {

    private int decimal = -1;
    private _Index index = null;
    private String id = null;

    public _Index(int decimal, _Index index, int left, int right) {
        super(left, right);

        if (!checkInt(decimal) || decimal < 0) {
            eh.addError(ErrorPhase.Semantic, "Value " + decimal + " is out of bounds", left, right);
            this.decimal = -1;
            return;
        }
        this.index = index;
        this.decimal = decimal;
    }

    public _Index(String id, _Index index, int left, int right) {
        super(left, right);

        Description description = st.get(id);
        if (description == null) {
            eh.addError(ErrorPhase.Semantic, "Variable '" + id + "' does not exist", left, right);
            this.decimal = -1;
            return;
        }

        if (description instanceof ConstantDescription) {
            ConstantDescription constant = (ConstantDescription) description;
            if (constant.getType() == Types.INT) {
                decimal = constant.getDecimalValue();
                if (!checkInt(decimal) || decimal < 0) {
                    eh.addError(ErrorPhase.Semantic, "Constant '" + id + "' is not of type integer", left, right);
                    this.decimal = -1;
                    return;
                }
            } else {
                eh.addError(ErrorPhase.Semantic, ".", left, right);
                return;
            }
        } else if (description instanceof VariableDescription) {
            VariableDescription variable = (VariableDescription) description;
            if (variable.getType() == Types.INT) {
                this.id = id;
            } else {
                eh.addError(ErrorPhase.Semantic, "Variable '" + id + "' is not of type integer", left, right);
                return;
            }
        } else {
            eh.addError(ErrorPhase.Semantic, "Inexistent variable: " + id, left, right);
            return;
        }
        this.index = index;
    }

    public _Index getNext() {
        return index;
    }

    public String getId() {
        return id;
    }

    public int getDecimal() {
        return decimal;
    }

    public Variable generate(LinkedList<Integer> sizes) {
        // Base case: if there is no next index, return the current decimal value
        Variable t = new Variable(1);
        if (id == null) {
            tac.put(new Instruction(Operations.COPY, decimal, t));
        } else {
            t = ((TACDescription) st.get(id)).getVariable();
        }
        if (index == null) {
            return t;
        }

        // Recursive case: compute the linear index
        Variable t0 = index.generate(sizes);

        Variable t1 = new Variable(1);
        tac.put(new Instruction(Operations.COPY, sizes.pop(), t1));
        Variable t2 = new Variable(1);
        tac.put(new Instruction(Operations.PROD, t0, t1, t2));
        Variable t3 = new Variable(1);
        tac.put(new Instruction(Operations.SUM, t, t2, t3));
        
        return t3;
    }

}
