package utils;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.description.ArgumentDescription;
import utils.description.ConstantDescription;
import utils.description.Description;
import utils.description.IndexDescription;
import utils.description.ProcedureDescription;
import utils.description.TypeDescription;
import utils.description.VariableDescription;

public class SymbolTable {

    private int n;
    private TreeMap<Integer, Integer> scopeTable;
    private TreeMap<Integer, Row> expansionTable;
    private HashMap<String, Row> descriptionTable;

    private BufferedWriter writer = null;

    private static ErrorHandler eh;

    private boolean print;

    public SymbolTable(ErrorHandler errh, boolean print) {
        eh = errh;
        n = 0;
        scopeTable = new TreeMap<>();
        expansionTable = new TreeMap<>();
        descriptionTable = new HashMap<>();

        this.print = print;

        if (print) {
            try {
                writer = new BufferedWriter(new FileWriter("SymbolTable.txt"));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        empty();
    }

    public void empty() {
        n = 0;
        descriptionTable.clear();
        scopeTable.put(n, 0);
        n = 1;
        scopeTable.put(n, 0);
    }

    public boolean put(Description description) {
        Row row = descriptionTable.get(description.getId());
        if (row != null) {
            if (row.np == n) {

                return false;
            }

            int idxe = scopeTable.get(n) + 1;
            scopeTable.put(n, idxe);
            expansionTable.put(idxe, row);
        }
        descriptionTable.put(description.getId(), new Row(description, n));
        return true;
    }

    public void enterBlock() {
        if (print) {
            try {
                String text = "[BEFORE ENTERING BLOCK]----------------------------------------------------\n" + toString();
                writer.write(text);
                writer.flush();
            } catch (IOException ex) {
                System.out.println(ex.getMessage());
            }
        }

        n++;
        scopeTable.put(n, scopeTable.get(n - 1));
    }

    public Description get(String id) {
        Row row = descriptionTable.get(id);
        return (row == null) ? (null) : (row.description);
    }

    public boolean putIndex(String id, IndexDescription description) {
        Description da = descriptionTable.get(id).description;

        if ((da instanceof TypeDescription) == false) {
            return false;
        }

        int idxe = scopeTable.get(n) + 1;
        scopeTable.put(n, idxe);

        description.setId(null);
        Row row = new Row(description, -1);

        // Insert at the beginning
        row.next = descriptionTable.get(id).first;
        descriptionTable.get(id).first = idxe;

        expansionTable.put(idxe, row);

        return true;
    }

    //Tener en cuenta el orden en el que se insertan las dimensiones en las listas de _ArrDeclaration/_FunctionArgList
    //
    /* 
    public boolean putIndex(String id, IndexDescription description) {
        Description da = descriptionTable.get(id).description;

        if ((da instanceof TypeDescription) == false) {
            return false;
        }

        int idxe = descriptionTable.get(id).first;
        int idxep = 0;

        while (idxe != 0) {
            idxep = idxe;
            idxe = expansionTable.get(idxe).next;
        }

        idxe = scopeTable.get(n) + 1;
        scopeTable.put(n, idxe);
        description.setId(null);
        Row row = new Row(description, -1);
        row.next = 0;
        expansionTable.put(idxe, row);

        if (idxep == 0) {
            descriptionTable.get(id).first = idxe;
        } else {
            expansionTable.get(idxep).next = idxe;
        }
        return true;
    }
     */
    public void exitBlock() {
        if (print) {
            try {
                String text = "[BEFORE EXITING BLOCK]----------------------------------------------------\n" + toString();
                writer.write(text);
                writer.flush();
            } catch (IOException ex) {
                System.out.println(ex.getMessage());
            }
        }

        // evaluar si hay un nivel al que volver
        if (n == 1) {
            eh.addError(ErrorPhase.Semantic, "Escaping the global scope was atempted, might be due a faulty function definition.", -1, -1);
            return;
        }
        int idxi = scopeTable.get(n); // idxi = ta[n]
        n = n - 1;                    // n = n - 1
        int idxf = scopeTable.get(n); // idxf = ta[n]

        // while idxi > idxf
        while (idxi > idxf) {
            Row row = expansionTable.get(idxi); // te[idxi]
            if (row != null && row.np != -1) {
                // if te[idxi].np != -1
                String id = row.description.getId(); // id = te[idxi].id
                Row rowInDescription = descriptionTable.get(id); // td[id]

                if (rowInDescription != null) {
                    // td[id].np = te[idxi].np
                    // td[id].d = te[idxi].d
                    // td[id].first = te[idxi].next
                    rowInDescription.np = row.np;
                    rowInDescription.description = row.description;
                    rowInDescription.first = row.next;
                }
            }
            idxi = idxi - 1; // idxi = idxi - 1
        }
        Iterator<HashMap.Entry<String, Row>> iterator = descriptionTable.entrySet().iterator();
        while (iterator.hasNext()) {
            HashMap.Entry<String, Row> entry = iterator.next();
            if (((Row) entry.getValue()).np == n + 1) {
                iterator.remove();
            }
        }
    }

    public int first(String id) {
        Description description = descriptionTable.get(id).description;

        return descriptionTable.get(id).first;
    }

    //0 means that there is no more indexes
    public int next(int idx) {
        Row row = expansionTable.get(idx);
        return row.next;
    }

    public boolean last(int idx) {
//Se deberia revisar si es un array de tipo ARR?
        return expansionTable.get(idx).next == 0;
    }

    public IndexDescription check(int idx) {
        return (IndexDescription) expansionTable.get(idx).description;
    }

    public ArgumentDescription checkArg(int idx) {
        return (ArgumentDescription) expansionTable.get(idx).description;
    }

//Susceptible de cambiar ArgumentDescription
    public boolean putParam(String idProcedure, Description description) {
        Row row = descriptionTable.get(idProcedure);
        Description procedure = row.description;
        if ((procedure instanceof ProcedureDescription) == false) {
            return false;
        }

        int idxe = row.first;
        int idxep = 0;

        Row tempElem = expansionTable.get(idxe);

        while (idxe != 0 && tempElem.description.getId().compareTo(description.getId()) != 0) {
            idxep = idxe;
            idxe = expansionTable.get(idxe).next;
        }

        if (idxe != 0) {
            return false;
        }
        idxe = scopeTable.get(n) + 1;
        scopeTable.put(n, idxe);
        row = new Row(description, -1);
        row.next = 0;
        expansionTable.put(idxe, row);

        if (idxep == 0) {
            descriptionTable.get(idProcedure).first = idxe;
        } else {
            expansionTable.get(idxep).next = idxe;
        }
        return true;
    }

    private class Row {

        public int np;
        public Description description;
        //No es muy seguro but Fuckit we BALL!
        public int first;
        public int next;

        public Row(Description description, int np) {
            this.description = description;
            this.np = np;
            next = 0;
        }
    }

    public String toString() {
        String value = "N = " + n + "\n\n";

        value += "------------------\n";
        value += "| ACCESS   TABLE |\n";
        value += "------------------\n";
        value += "| LVL   | IDX    |\n";
        value += "------------------\n";

        for (Map.Entry<Integer, Integer> entry : scopeTable.entrySet()) {
            value += "|" + entry.getKey() + "\t\t|" + entry.getValue() + "\t\t|\n";
        }
        value += "------------------\n\n";
        value += "----------------------------------------\n";
        value += "|           EXPANSION  TABLE           |\n";
        value += "----------------------------------------\n";
        value += "| INDX | NP | ID | DESC | FIRST | NEXT |\n";
        value += "----------------------------------------\n";

        for (Map.Entry<Integer, Row> entry : expansionTable.entrySet()) {
            Row row = entry.getValue();
            value += "| " + entry.getKey() + " | " + row.np + " | " + " | " + row.description.getId() + " | " + row.description.getClass().getSimpleName() + " | " + row.first + " | " + row.next + " \t|\n";
        }
        value += "----------------------------------------\n\n";

        value += "----------------------------------------\n";
        value += "|          DESCRIPTION  TABLE          |\n";
        value += "----------------------------------------\n";
        value += "|    ID    |     TYPE     |    DESC    |\n";
        value += "----------------------------------------\n";

        for (Map.Entry<String, Row> entry : descriptionTable.entrySet()) {
            Row row = entry.getValue();
            if (row.description instanceof ConstantDescription) {
                value += "| " + row.description.getId() + " | " + ((ConstantDescription) row.description).getType().name() + " | " + row.description.getClass().getSimpleName() + " \t|\n";
            } else if (row.description instanceof VariableDescription) {
                value += "| " + row.description.getId() + " | " + ((VariableDescription) row.description).getType().name() + " | " + row.description.getClass().getSimpleName() + " \t|\n";
            } else if (row.description instanceof TypeDescription) {
                value += "| " + row.description.getId() + " | " + ((TypeDescription) row.description).getType().name() + " | " + row.description.getClass().getSimpleName() + " \t|\n";
            }
        }
        value += "----------------------------------------\n";
        return value;
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
