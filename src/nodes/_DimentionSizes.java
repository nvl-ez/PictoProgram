
package nodes;


public class _DimentionSizes extends Node {
    private _DimentionSizes dimentionSizes;
    private int decimal;

    public _DimentionSizes(_DimentionSizes dimentionSizes, int decimal, int left, int right) {
        super(left, right);
        this.dimentionSizes = dimentionSizes;
        this.decimal = decimal;
    }
    
    public int getDecimal(){
        return decimal;
    }
    
    public _DimentionSizes getNext(){
        return dimentionSizes;
    }
    
}
