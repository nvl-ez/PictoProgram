
package nodes;


public class _FunctionHead extends Node {
    private String id;
    private _FunctionArgs functionArgs;
    
    public _FunctionHead(String id, _FunctionArgs functionArgs, int left, int right) {
        super(left, right);
        this.id = id;
        this.functionArgs = functionArgs;
    }
    
    public String getId(){
        return id;
    }
    
    public _FunctionArgs getArgs(){
        return functionArgs;
    }
    
}
