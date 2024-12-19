
package nodes;


public class _Else extends Node{
    private _FunctionBody functionBody;
    
    public _Else(_FunctionBody functionBody, int left, int right) {
        super(left, right);
        this. functionBody = functionBody;
    }

}
