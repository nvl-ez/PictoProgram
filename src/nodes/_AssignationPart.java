
package nodes;

import intermediateCode.Variable;


public class _AssignationPart extends Node {
    private _Expression expression;

    public _AssignationPart(_Expression expression, int left, int right) {
        super(left, right);
        this.expression = expression;
    }
    
    public _Expression getExpression(){
        return expression;
    }
    
    public Variable generate(){
        return expression.generate();
    }

}
