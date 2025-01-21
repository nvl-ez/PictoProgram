
package nodes;
import utils.OpArit;
import utils.OpLog;
import utils.OpComp;

public class _Operation extends Node{
    private OpArit oparit = null;
    private OpComp opcomp = null;
    private OpLog oplog = null;

    public _Operation(OpArit oparit, int left, int right) {
        super(left, right);
        this.oparit = oparit;
    }
    
    public _Operation(OpComp opcomp, int left, int right) {
        super(left, right);
        this.opcomp = opcomp;
    }
    
    public _Operation(OpLog oplog, int left, int right) {
        super(left, right);
        this.oplog = oplog;
    }

    public OpArit getOparit() {
        return oparit;
    }

    public OpComp getOpcomp() {
        return opcomp;
    }

    public OpLog getOplog() {
        return oplog;
    }
}
