package nodes;

import intermediateCode.Instruction;
import intermediateCode.Operations;
import intermediateCode.Variable;
import java.util.LinkedList;
import static nodes.Node.eh;
import utils.ErrorPhase;
import utils.Types;
import utils.description.Description;
import utils.description.TACDescription;
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
            eh.addError(ErrorPhase.Semantic, "Inexistent variable: "+id, left, right);
            type = Types.NULL;
            return;
        }
        
        if(desc instanceof TypeDescription){
            if(((TypeDescription)desc).getType() == Types.NULL){
                type = Types.NULL;
                return;
            }
        } else{
            eh.addError(ErrorPhase.Semantic, "Inexistent array: "+id, left, right);
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
    
    public void generate(LinkedList<Variable> args, int i){
        if(funCallArgs!=null){
            funCallArgs.generate(args, i+1);
        }
        
        if(id!=null){
            tac.put(new Instruction(Operations.PUT, null, null, ((TACDescription)st.get(id)).getVariable()));
        } else {
            tac.put(new Instruction(Operations.PUT, null, null, expression.generate()));
        }
        
    }

}
