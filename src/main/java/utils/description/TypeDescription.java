
package utils.description;
import intermediateCode.Variable;
import java.util.LinkedList;
import utils.Types;


public class TypeDescription extends Description{
    
    private Types type;
    private Variable base;
    private LinkedList<Variable> index;
    private LinkedList<Integer> dimLengths;

    public TypeDescription(String id, Types type) {
        super(id);
        base = new Variable();
        
        index = new LinkedList<>();
        
        this.type = type;
    }
    
    public Types getType(){
        return type;
    }
    
    public void setType(Types type){
        this.type = type;
    }

    public Variable getBase() {
        return base;
    }

    public void setBase(Variable var) {
        this.base = var;
    }
    
    public void setDimentions(LinkedList<Integer> dimentions){
        
    }

    public LinkedList<Variable> getIndex() {
        return index;
    }

    public LinkedList<Integer> getDimLengths() {
        return dimLengths;
    }

    public void setDimLengths(LinkedList<Integer> dimLengths) {
        this.dimLengths = dimLengths;
        
        int words = 0;
        
        for(Integer dimLength : dimLengths){
            words+=dimLength;
            
            index.add(new Variable());
        }
        base.setWords(words);
    }

    
}
