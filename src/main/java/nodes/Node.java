
package nodes;

import java_cup.runtime.ComplexSymbolFactory.ComplexSymbol;
import utils.ErrorHandler;
import utils.SymbolTable;
import utils.description.Description;


public class Node {
    protected int line;
    protected int column;
    protected static ErrorHandler eh;
    protected static SymbolTable st;
    
    
    public Node(int line, int column){
        this.line = line;
        this.column = column;
    }

    public int getLine() {
        return line;
    }

    public int getColumn() {
        return column;
    }
    
    public static void setErrorHandler(ErrorHandler errh){
        eh = errh;
    }
    
    public static void setSymbolTable(SymbolTable simt){
        st = simt;
    }
    
    protected boolean checkInt(int number){
        return -32768<= number && number<= 32767;
    }
    
    protected boolean checkChar(char character){
        return ' '<=character && character<='~';
    }
}
