
package utils.description;
import utils.Types;


public class TypeDescription extends Description{
    
    private Types type;

    public TypeDescription(String id, Types type) {
        super(id);
        
        this.type = type;
    }
    
    public Types getType(){
        return type;
    }
    
    public void setType(Types type){
        this.type = type;
    }

}
