
package nodes;

import utils.Types;


public class _MainFunction extends Node{
    _FunctionBody functionBody;

    public _MainFunction(_FunctionBody functionBody, int left, int right) {
        super(left, right);
        this.functionBody = functionBody;
    }
    
    public void generate(){
        
    }
    
}
