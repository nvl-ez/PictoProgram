
package nodes;


public class _Dimentions extends Node{
    private _Dimentions dimentions;

    public _Dimentions(_Dimentions dimentions, int left, int right) {
        super(left, right);
        this.dimentions = dimentions;
    }
    
    public _Dimentions getNext(){
        return dimentions;
    }
    
    
}
