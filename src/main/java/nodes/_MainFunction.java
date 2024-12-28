
package nodes;

import intermediateCode.Function;
import intermediateCode.Instruction;
import intermediateCode.Operations;
import intermediateCode.Tag;
import static nodes.Node.st;
import static nodes.Node.tac;
import utils.Types;
import utils.description.TACDescription;


public class _MainFunction extends Node{
    _FunctionBody functionBody;

    public _MainFunction(_FunctionBody functionBody, int left, int right) {
        super(left, right);
        this.functionBody = functionBody;
    }
    
    public void generate(){
         Tag ei = new Tag();
        Function fun = new Function(ei);
        st.put(new TACDescription("#", fun));
        
        tac.put(new Instruction(Operations.SKIP, null, null, fun.getStart()));
        tac.put(new Instruction(Operations.PMB, null, null, fun));
        
        st.enterBlock();
        if(functionBody != null){
            functionBody.generate();
        }
        st.exitBlock();
        
        tac.recalculate();
    }
    
}
