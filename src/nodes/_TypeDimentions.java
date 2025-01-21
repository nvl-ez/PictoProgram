
package nodes;

import utils.Types;


public class _TypeDimentions extends Node{
    private _DimentionSizes dimentions;
    private Types type;
    
    public _TypeDimentions(_DimentionSizes dimentions, Types type, int left, int right) {
        super(left, right);
        this.dimentions = dimentions;
        this.type = type;
    }
    
    public Types getType(){
        return type;
    }
    
    public _DimentionSizes getDimentions(){
        return dimentions;
    }
}
