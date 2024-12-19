
package utils.description;

import java.util.LinkedList;
import utils.Types;


public class ArgumentDescription extends Description {
    
    private LinkedList<Integer> dimentions = null;
    private Types type;
    
    public ArgumentDescription(String id, Types type) {
        super(id);
        this.type = type;
    }
    
    public ArgumentDescription(String id, Types type, LinkedList<Integer> dimentions) {
        super(id);
        this.dimentions = dimentions;
        this.type = type;
    }
    
    public LinkedList<Integer> getDimentions(){
        return dimentions;
    }
    
    public Types getType(){
        return type;
    }
}
