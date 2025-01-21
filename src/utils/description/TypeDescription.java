
package utils.description;
import intermediateCode.Variable;
import java.util.LinkedList;
import utils.Types;


public class TypeDescription extends Description{
    
    private Types type;
    private LinkedList<Variable> index;
    private LinkedList<Integer> dimLengths;

    public TypeDescription(String id, Types type) {
        super(id);
        
        index = new LinkedList<>();
        
        this.type = type;
    }
    
    public Types getType(){
        return type;
    }
    
    public void setType(Types type){
        this.type = type;
    }
    
    public void setDimentions(LinkedList<Integer> dimentions){
        
    }

    public LinkedList<Variable> getIndex() {
        return index;
    }

    public LinkedList<Integer> getDimLengths() {
        return dimLengths;
    }
}
