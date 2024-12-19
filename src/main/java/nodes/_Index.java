package nodes;

import static nodes.Node.eh;
import utils.ErrorPhase;
import utils.Types;
import utils.description.ConstantDescription;
import utils.description.Description;
import utils.description.VariableDescription;

public class _Index extends Node {

    private int decimal = -1;
    private _Index index ;
    private String id = null;

    public _Index(int decimal, _Index index, int left, int right) {
        super(left, right);

        if (!checkInt(decimal) || decimal < 0) {
            eh.addError(ErrorPhase.Semantic, "Value "+decimal+" is out of bounds", left, right);
            this.decimal = -1;
            return;
        }
        this.index = index;
        this.decimal = decimal;
    }

    public _Index(String id, _Index index, int left, int right) {
        super(left, right);
        
        Description description = st.get(id);
        if (description instanceof ConstantDescription) {
            ConstantDescription constant = (ConstantDescription) description;
            if (constant.getType() == Types.INT) {
                decimal = constant.getDecimalValue();
                if (!checkInt(decimal) || decimal < 0) {
                    eh.addError(ErrorPhase.Semantic, "Constant '"+id+"' is not of type integer", left, right);
                    this.decimal = -1;
                    return;
                }
            } else {
                eh.addError(ErrorPhase.Semantic, ".", left, right);
                return;
            }
        } else if (description instanceof VariableDescription) {
            VariableDescription variable = (VariableDescription)description;
            if(variable.getType() == Types.INT){
                this.id = id;
            } else{
                eh.addError(ErrorPhase.Semantic, "Variable '"+id+"' is not of type integer", left, right);
                return;
            }
        } else {
            eh.addError(ErrorPhase.Semantic, "Inexistent variable: "+id, left, right);
            return;
        }
        this.index = index;
    }

    public _Index getNext() {
        return index;
    }

    public String getId(){
        return id;
    }
    
    public int getDecimal(){
        return decimal;
    }
}
