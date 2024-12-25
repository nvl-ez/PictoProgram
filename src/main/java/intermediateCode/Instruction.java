package intermediateCode;

public class Instruction {

    private Operations op = null;
    private Operand operand1 = null;
    private Operand operand2 = null;
    private Operand result = null;
    
    private Integer value = null;

    public Instruction(Operations op, Operand operand1, Operand operand2, Operand result) {
        this.op = op;
        this.operand1 = operand1;
        this.operand2 = operand2;
        this.result = result;
    }
    
    public Instruction(Operations op, int num, Operand result) {
        this.op = op;
        value = num;
        this.result = result;
    }
    
    public Instruction(Operations op, char character, Operand result) {
        this.op = op;
        value = (int)character;
        this.result = result;
    }
    
    public Instruction(Operations op, boolean bool, Operand result) {
        this.op = op;
        value = bool? -1 : 0;
        this.result = result;
    }
    
    public String toString(){
        if(op == Operations.SKIP){
            return result.getName()+": "+op.name();
        }
        
        if(value != null){
            return op.name()+"("+ value + ", " + (operand2!=null?operand2.getName() : "--") + ", "+(result!=null?result.getName() : "--")+")";
        }
        
        return op.name()+"("+ (operand1!=null?operand1.getName() : "--") + ", " + (operand2!=null?operand2.getName() : "--") + ", "+(result!=null?result.getName() : "--")+")";
    }
}
