
package nodes;

import static nodes.Node.eh;
import static nodes.Node.st;
import utils.ErrorPhase;
import utils.Types;
import utils.description.Description;
import utils.description.IndexDescription;
import utils.description.TypeDescription;
import utils.description.VariableDescription;


public class _Assignation extends Node{
    private String id;
    private _Expression expression;
    private _Index index = null;

    public _Assignation(String id, _Expression expression, int left, int right) {
        super(left, right);
        
        Description desc = st.get(id);
        if(desc == null ||desc instanceof VariableDescription == false){
            eh.addError(ErrorPhase.Semantic, "Inexistent variable: "+id, left, right);
            return;
        }
        
        if(expression.getType() == Types.NULL){
            return;
        }
        
        if(((VariableDescription)desc).getType() != expression.getType()){
            eh.addError(ErrorPhase.Semantic, "Invalid type assignation for variable: "+id, left, right);
            return;
        }
        
        this.id = id;
        this.expression = expression;
    }
    
    public _Assignation(String id, _Index index, _Expression expression, int left, int right) {
        super(left, right);
        Description desc = st.get(id);
        if(desc == null ||(desc instanceof TypeDescription) == false){
            eh.addError(ErrorPhase.Semantic, "Variable '"+id+"' is not of type array", left, right);
            return;
        }
        
        if(expression.getType() == Types.NULL){
            return;
        }
        
        TypeDescription arr = (TypeDescription)desc;
        
        int i = st.first(arr.getId());
        _Index ind = index;
        
        while(i>0 && ind != null ){
            IndexDescription iDesc = st.check(i);
            if(ind.getDecimal() != -1 && iDesc.getLength() <= ind.getDecimal()){
                eh.addError(ErrorPhase.Semantic, "Indexed position '"+ind.getDecimal()+"' is out of boudnds for length '"+iDesc.getLength()+"'", left, right);
                return;
            }
            i = st.next(i);
            ind = ind.getNext();
        }
        
        
        this.id = id;
        this.index = index;
        this.expression = expression;
    }
    
    public void generate(){
        if(index == null){
            
        } else{
            
        }
    }

}
