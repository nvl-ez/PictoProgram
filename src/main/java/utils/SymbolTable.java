
package utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import utils.description.ArgumentDescription;
import utils.description.Description;
import utils.description.IndexDescription;
import utils.description.ProcedureDescription;
import utils.description.TypeDescription;


public class SymbolTable {
    private int n;
    private ArrayList<Integer> scopeTable;
    private ArrayList<Row> expansionTable;
    private HashMap<String, Row> descriptionTable;
    private ErrorHandler eh;
    
    public SymbolTable(){
        n = 0; 
        scopeTable = new ArrayList<>();
        expansionTable = new ArrayList<>();
        descriptionTable = new HashMap<>();
        this.eh = new ErrorHandler();
    }
    
    public void empty(){
        n = 0;
        descriptionTable.clear();
        scopeTable.set(n, 0);
        n = 1;
        scopeTable.set(n, 0);
    }
    
    public boolean put(Description description) {
        Row row = descriptionTable.get(description.getId());
        if(row != null){
            if(row.np == n){
                
                return false;
            }
            
            int idxe = scopeTable.get(n)+1;
            scopeTable.set(n, idxe);
            expansionTable.set(idxe, row);
        }
        descriptionTable.put(description.getId(), new Row(description, n));
        return true;
    }
    
    public void enterBlock(){
        n++;
        scopeTable.set(n, scopeTable.get(n-1));
    }
    
    public Description get(String id){
        Row row = descriptionTable.get(id);
        return (row==null)?(null):(row.description);
    }
    
    public boolean putIndex(String id, IndexDescription description){
        Description da = descriptionTable.get(id).description;
        
        if((da instanceof TypeDescription) == false || ((TypeDescription)da).getType() != Types.ARR ){
            return false;
        }
        
        int idxe = descriptionTable.get(id).first;
        int idxep = 0;
        
        while(idxe != 0){
            idxep = idxe;
            idxe = expansionTable.get(idxe).next;
        }
        
        idxe = scopeTable.get(n)+1;
        scopeTable.set(n, idxe);
        description.setId(null);
        Row row  = new Row(description, -1);
        row.next = 0;
        expansionTable.add(idxe, row);
        
        if(idxep == 0){
            descriptionTable.get(id).first = idxe;
        } else{
            expansionTable.get(idxep).next = idxe;
        }
        return true;
    }
    
    public void exitBlock(){
        if(n == 0){
            return;
        }
        
        int start = Math.min(scopeTable.get(n), scopeTable.get(n-1));
        int end = Math.max(scopeTable.get(n), scopeTable.get(n-1));
        
        for(int i = start; i<=end; i++){
            Row row = expansionTable.get(i);
            String id = row.description.getId();
            descriptionTable.put(id, new Row(row.description, row.np));
        }
    }
    
    public int first(String id){
        Description description = descriptionTable.get(id).description;
        
        return descriptionTable.get(id).first;
    }
    
    //0 means that there is no more indexes
    public int next(int idx){
        Row row = expansionTable.get(idx);
        return row.next;
    }
    
    public boolean last(int idx){
//Se deberia revisar si es un array de tipo ARR?
        return expansionTable.get(idx).next == 0;
    }
    
    public IndexDescription check(int idx){
        return (IndexDescription)expansionTable.get(idx).description;
    }
    
    public ArgumentDescription checkArg(int idx){
        return (ArgumentDescription)expansionTable.get(idx).description;
    }
    
//Susceptible de cambiar ArgumentDescription
    public boolean putParam(String idProcedure, Description description){
        Row row = descriptionTable.get(idProcedure);
        Description procedure = row.description;
        if((procedure instanceof ProcedureDescription) == false){
            return false;
        }
        
        int idxe = row.first;
        int idxep = 0;
        
        while(idxe != 0 && expansionTable.get(idxe).description.getId().compareTo(description.getId())!= 0){
            idxep = idxe;
            idxe = expansionTable.get(idxe).next;
        }
        
        if(idxe != 0) return false;
        idxe = scopeTable.get(n)+1;
        scopeTable.set(n, idxe);
        row = new Row(description, -1);
        row.next = 0;
        expansionTable.add(idxe, row);
        
        if(idxep == 0){
            descriptionTable.get(idProcedure).first = idxe;
        } else{
            expansionTable.get(idxep).next = idxe;
        }
        return true;
    }
    
    
    private class Row{
        public int np;
        public Description description;
        //No es muy seguro but Fuckit we BALL!
        public int first;
        public int next;
        
        public Row(Description description, int np){
            this.description = description;
            this.np = np;
            next = 0;
        }
    }
    
    /*PREGUTNAS DECLARACION DE TABLAS:
    1. da = td[id]!=dtipus OR da.td.tipus != ttaula:
    - Que es dtipus? Que es ttaula?
    - Que es td en da.td... ?
    
    2. idxe = td[id].first
    - first es la misma funcion que se declara luego? donde esta el parametro id?
    
    3.idxe = te[idxe].next
    - next es la misma funcion que se declara luego? donde esta el parametro id?
    
    4. te[idxe].idcamp...
    - Que es idcamp? es el id de la entrada?
    
    5. en first(id)
    - id es el id de la tabla entera? la funcion devuelve la posicion de la primera dimension (int)?
    
    6. en next(idx)
    - idx es la posicion de una dimension? Devuelve la posicion de la siguiente dimension?
    */
}
