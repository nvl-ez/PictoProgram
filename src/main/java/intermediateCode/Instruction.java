package intermediateCode;

public class Instruction {

    private Operations op;
    private Operand operand1;
    private Operand operand2;
    private Operand result;
    
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
}
