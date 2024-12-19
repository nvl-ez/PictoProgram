
package nodes;


public class _Functions extends Node {
    private _Functions functions;
    private _Function function;

    public _Functions(_Function function, _Functions functions, int left, int right) {
        super(left, right);
        this. functions = functions;
        this.function = function;
    }
}
