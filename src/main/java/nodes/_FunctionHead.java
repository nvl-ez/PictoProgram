package nodes;

import intermediateCode.Function;
import intermediateCode.Tag;
import intermediateCode.Variable;
import utils.description.ArgumentDescription;
import utils.description.TACDescription;

public class _FunctionHead extends Node {

    private String id;
    private _FunctionArgs functionArgs = null;

    public _FunctionHead(String id, _FunctionArgs functionArgs, int left, int right) {
        super(left, right);
        this.id = id;
        this.functionArgs = functionArgs;
    }

    public String getId() {
        return id;
    }

    public _FunctionArgs getArgs() {
        return functionArgs;
    }

    public Function generate() {
        Tag ei = new Tag();
        Function fun = new Function(ei);
        st.put(new TACDescription(id, fun));

        st.enterBlock();
        
        Variable ret = new Variable(1, true);
        st.put(new TACDescription("!", ret));
        
        if (functionArgs != null && functionArgs.getFunctionArgsList() != null) {
            functionArgs.getFunctionArgsList().generate(fun);
        }
        
        return fun;
    }
    

}
