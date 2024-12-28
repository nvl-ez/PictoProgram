
package nodes;
import intermediateCode.Variable;
import java.util.LinkedList;
import static nodes.Node.eh;
import static nodes.Node.st;
import utils.ErrorPhase;
import utils.Types;
import utils.description.IndexDescription;
import utils.description.TACDescription;
import utils.description.TypeDescription;
import utils.description.VariableDescription;

public class _ArrDeclaration extends Node {
    private Types type;
    private _DimentionSizes dimentionSizes;
    private String id;
    
    private TypeDescription desc = null;

    public _ArrDeclaration(Types type, _DimentionSizes dimentionSizes, String id, int left, int right) {
        super(left, right);
        TypeDescription description = new TypeDescription(id, type);
        
        if(!st.put(description)){
            eh.addError(ErrorPhase.Semantic, "Identifier '" + id+ "' already in use", left, right);
            description.setType(Types.NULL);
            this.type = Types.NULL;
            return;
        }
        
        if(type == Types.VOID){
            eh.addError(ErrorPhase.Semantic, "Arrays cannot be of type void", left, right);
            description.setType(Types.NULL);
            this.type = Types.NULL;
            return;
        }
        
        _DimentionSizes i = dimentionSizes;
        while(i!= null){
            if(!checkInt(i.getDecimal()) || i.getDecimal() <= 0){
                this.type = Types.NULL;
                description.setType(Types.NULL);
                eh.addError(ErrorPhase.Semantic, "Value "+i.getDecimal()+" is out of bounds", left, right);
                return;
            }
            i = i.getNext();
        }
        
        i = dimentionSizes;
        
        while(i!= null){
            IndexDescription indexDescription = new IndexDescription(i.getDecimal());
            if(!st.putIndex(id, indexDescription)){
                this.type = Types.NULL;
                description.setType(Types.NULL);
                eh.addError(ErrorPhase.Semantic, "Identifier '"+id+"' is not an array", left, right);
                return;
            }
            i = i.getNext();
        }
        
        this.type = type;
        this.dimentionSizes = dimentionSizes;
        this.id = id;
        this.desc = description;
    }
    
    public void generate(){
        int size = 1;
        _DimentionSizes dims = dimentionSizes;
        LinkedList<Integer> sizes = new LinkedList<>();
        while(dims != null){
            sizes.push(dims.getDecimal());
            size *= dims.getDecimal();
            dims = dims.getNext();
        }
        
        st.put(new TACDescription(id, new Variable(size, false), sizes));
    }

}
