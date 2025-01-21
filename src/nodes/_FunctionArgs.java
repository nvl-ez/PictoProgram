
package nodes;


public class _FunctionArgs extends Node {
    _FunctionArgsList functionArgsList;
    
    public _FunctionArgs(_FunctionArgsList functionArgsList, int left, int right) {
        super(left, right);
        this.functionArgsList = functionArgsList;
    }
    
    public _FunctionArgsList getFunctionArgsList(){
        return functionArgsList;
    }

}
