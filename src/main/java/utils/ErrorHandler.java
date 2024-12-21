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
        errorString += "|################################################### ERRORS ############################################################|\n";
        errorString += "-------------------------------------------------------------------------------------------------------------------------\n";
        errorString += "| Compiling Phase | Row \t| Column | Details\n";
        
        
        for(Row error : errors){
            errorString += "| ";
            switch(error.phase){
                case ErrorPhase.Lexic:
                    errorString += "LEXIC           |";
                    break;
                case ErrorPhase.Sintactic:
                    errorString += "SINTACTIC       |";
                    break;
                case ErrorPhase.Semantic:
                    errorString += "SEMANTIC        |";
                    break;
            }
            if(error.line >= 0){
                errorString += " "+error.line+"\t\t|";
            } else{
                errorString += " \t\t|";
            }
            if(error.column >= 0){
                errorString += " "+error.column+"\t |";
            } else{
                errorString += " \t |";
            }
            errorString += " "+error.errorDesc+"\n";
        }
        errorString += "-------------------------------------------------------------------------------------------------------------------------\n";
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
