
package nodes;

import java_cup.runtime.ComplexSymbolFactory.ComplexSymbol;


public class _Declaration extends Node {
    private _ConstDeclaration constDeclaration;
    private _VarDeclaration varDeclaration;
    private _ArrDeclaration arrDeclaration;
    
    public _Declaration(_ConstDeclaration constDeclaration, int left, int right) {
        super(left, right);
        this.constDeclaration = constDeclaration;
    }
    
    public _Declaration(_VarDeclaration varDeclaration, int left, int right) {
        super(left, right);
        this.varDeclaration = varDeclaration;
    }
    
    public _Declaration(_ArrDeclaration arrDeclaration, int left, int right) {
        super(left, right);
        this.arrDeclaration = arrDeclaration;
    }

}
