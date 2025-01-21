
package nodes;

import java_cup.runtime.ComplexSymbolFactory.ComplexSymbol;


public class _GlobalDeclarations extends Node {
    private _Declaration declaration;
    private _GlobalDeclarations globalDeclarations;
    
    public _GlobalDeclarations(_Declaration declaration, _GlobalDeclarations globalDeclarations, int left, int right) {
        super(left, right);
        this.declaration = declaration;
        this.globalDeclarations = globalDeclarations;
    }
    
    public void generate(){
        if(globalDeclarations != null){
            globalDeclarations.generate();
        }
        
        declaration.generate();
    }
}
