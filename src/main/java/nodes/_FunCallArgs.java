package nodes;

import static nodes.Node.eh;
import utils.ErrorTypes;
import utils.Types;
import utils.description.Description;
import utils.description.TypeDescription;



public class _FunCallArgs extends Node{
    private _FunCallArgs funCallArgs;
    private _Expression expression;
    private Types type;
    private String id = null; //populated if it is an array
    
    public _FunCallArgs(_FunCallArgs funCallArgs, _Expression expression, int left, int right) {
        super(left, right);
        this.funCallArgs = funCallArgs;
        this.expression = expression;
        type = expression.getType();
    }
    
    public _FunCallArgs(_FunCallArgs funCallArgs, String id, int left, int right) {
        super(left, right);
        
        Description desc = st.get(id);
        if(desc == null){
            eh.addError(ErrorTypes.NOT_VARIABLE, id, line, column);
            type = Types.NULL;
            return;
        }
        
        if(desc instanceof TypeDescription){
            if(((TypeDescription)desc).getType() == Types.NULL){
                type = Types.NULL;
                return;
            }
        } else{
            eh.addError(ErrorTypes.NOT_ARRAY, id, line, column);
            type = Types.NULL;
            return;
        }
        
        this.funCallArgs = funCallArgs;
        this.id = id;
        type = ((TypeDescription)desc).getType();
    }
    
    public _FunCallArgs getNext(){
        return funCallArgs;
    }
    
    public Types getType(){
        return type;
    }
    
    public String getId(){
        return id;
    }

}
