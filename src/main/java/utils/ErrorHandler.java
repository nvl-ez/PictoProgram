package utils;

import java.util.LinkedList;

public class ErrorHandler {

    LinkedList<Row> errors = new LinkedList<Row>();

    public void addError(ErrorPhase phase, String errorDesc, int line, int column) {
        errors.add(new Row(phase, errorDesc, line, column));
    }
    
    public boolean isErrorFree(){
        return errors.isEmpty();
    }
    
    public String toString(){
        String errorString = "-------------------------------------------------------------------------------------------------------------------------\n";
        errorString += "Compiling Phase | Row | Column | Details\n";
        
        for(Row error : errors){
            errorString += "| ";
            switch(error.phase){
                case ErrorPhase.Lexic:
                    errorString += "LEXIC          |";
                    break;
                case ErrorPhase.Sintactic:
                    errorString += "SINTACTIC      |";
                    break;
                case ErrorPhase.Semantic:
                    errorString += "SEMANTIC       |";
                    break;
            }
            
            errorString += " "+error.line+"\t|";
            errorString += " "+error.column+"\t|";
            errorString += " "+error.errorDesc+"\n";
            errorString += "-------------------------------------------------------------------------------------------------------------------------\n";
        }
        
        return errorString;
    }

    private class Row {
        ErrorPhase phase;
        String errorDesc;
        int line;
        int column;

        public Row(ErrorPhase phase, String errorDesc, int line, int column) {
            this.phase = phase;
            this.errorDesc = errorDesc;
            this.line = line;
            this.column = column;
        }
    }
}
