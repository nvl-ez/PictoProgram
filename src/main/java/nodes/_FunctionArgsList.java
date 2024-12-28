package nodes;

import intermediateCode.Function;
import intermediateCode.Variable;
import java.util.LinkedList;
import static nodes.Node.eh;
import static nodes.Node.st;
import utils.ErrorPhase;
import utils.Types;
import utils.description.IndexDescription;
import utils.description.TACDescription;
import utils.description.TypeDescription;
import utils.description.VariableDescription;

public class _FunctionArgsList extends Node {

    private _FunctionArgsList functionArgList = null;
    private _TypeDimentions typeDimentions = null;
    private Types type;
    private String id;

    public _FunctionArgsList(_FunctionArgsList functionArgList, Types type, String id, int left, int right) {
        super(left, right);

        VariableDescription description = new VariableDescription(id, type);

        if (!st.put(description)) {
            this.type = Types.NULL;
            eh.addError(ErrorPhase.Semantic, "Identifier '" + id + "' already in use", left, right);
            return;
        }

        if (type == Types.VOID) {
            this.type = Types.NULL;
            description.setType(Types.NULL);
            eh.addError(ErrorPhase.Semantic, "Arguments cannot be of type void", left, right);
            return;
        }

        this.functionArgList = functionArgList;
        this.type = type;
        this.id = id;
    }

    public _FunctionArgsList(_FunctionArgsList functionArgList, _TypeDimentions typeDimentions, String id, int left, int right) {
        super(left, right);
        Types type = typeDimentions.getType();

        TypeDescription description = new TypeDescription(id, typeDimentions.getType());
        if (!st.put(description)) {
            this.type = Types.NULL;
            eh.addError(ErrorPhase.Semantic, "Identifier '" + id + "' already in use", left, right);
            return;
        }

        if (type == Types.VOID) {
            this.type = Types.NULL;
            description.setType(Types.NULL);
            eh.addError(ErrorPhase.Semantic, "Arrays cannot be of type void", left, right);
            return;
        }

        _DimentionSizes dimentions = typeDimentions.getDimentions();

        _DimentionSizes i = dimentions;
        while (i != null) {
            if (!checkInt(i.getDecimal()) || i.getDecimal() <= 0) {
                this.type = Types.NULL;
                description.setType(Types.NULL);
                eh.addError(ErrorPhase.Semantic, "Value " + i.getDecimal() + " is out of bounds", left, right);
                return;
            }
            i = i.getNext();
        }

        i = dimentions;

        while (i != null) {
            IndexDescription indexDescription = new IndexDescription(i.getDecimal());
            if (!st.putIndex(id, indexDescription)) {
                this.type = Types.NULL;
                description.setType(Types.NULL);
                eh.addError(ErrorPhase.Semantic, "Identifier '" + id + "' is not an array", left, right);
                return;
            }
            i = i.getNext();
        }

        this.functionArgList = functionArgList;
        this.typeDimentions = typeDimentions;
        this.id = id;
    }

    public _FunctionArgsList next() {
        return functionArgList;
    }

    public _TypeDimentions getTypeDimentions() {
        return typeDimentions;
    }

    public Types getType() {
        return type;
    }

    public String getId() {
        return id;
    }

    public void generate(Function fun) {
        if (functionArgList != null) {
            functionArgList.generate(fun);
        }

        if (typeDimentions == null) {
            Variable t = new Variable(1, true);
            st.put(new TACDescription(id, t));
            fun.putArg(t);
        } else {
            _DimentionSizes dims = typeDimentions.getDimentions();
            LinkedList<Integer> sizes = new LinkedList<>();
            int size = 1;
            while (dims != null) {
                sizes.push(dims.getDecimal());
                size *= dims.getDecimal();
                dims = dims.getNext();
            }
             Variable t = new Variable(size, true);
            st.put(new TACDescription(id, t, sizes));
            fun.putArg(t);
        }
    }

}
