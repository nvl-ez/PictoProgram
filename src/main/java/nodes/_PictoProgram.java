package nodes;

import intermediateCode.Instruction;
import intermediateCode.Operations;
import intermediateCode.Tag;
import intermediateCode.Variable;
import java_cup.runtime.ComplexSymbolFactory.ComplexSymbol;
import utils.SymbolTable;

public class _PictoProgram extends Node {

    private _GlobalDeclarations globalDeclarations;
    private _Functions functions;
    private _MainFunction mainFunction;

    public _PictoProgram(_GlobalDeclarations globalDeclarations, _Functions functions, _MainFunction mainFunction, int left, int right) {
        super(left, right);
        this.globalDeclarations = globalDeclarations;
        this.functions = functions;
        this.mainFunction = mainFunction;
    }

    public void generate() {
        st = new SymbolTable(eh, false);
        
        if (globalDeclarations != null) {
            globalDeclarations.generate();
        }
        Tag main = new Tag();
        main.setName("main");
        tac.put(new Instruction(Operations.CALL, null, null, main));
        tac.put(new Instruction(Operations.HALT, null, null, null));
        if (functions != null) {
            functions.generate();
        }
        
        mainFunction.generate();
    }

}
