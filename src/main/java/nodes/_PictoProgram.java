
package nodes;

import java_cup.runtime.ComplexSymbolFactory.ComplexSymbol;


public class _PictoProgram extends Node{
    private _GlobalDeclarations globalDeclarations;
    private _Functions functions;
    private _MainFunction mainFunction;
    
    public _PictoProgram(_GlobalDeclarations globalDeclarations, _Functions functions, _MainFunction mainFunction, int left, int right) {
        super(left, right);
        this.globalDeclarations = globalDeclarations;
        this.functions = functions;
        this.mainFunction = mainFunction;
    }

}
