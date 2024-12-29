package intermediateCode;

public class Tag extends Operand {

    private static int counter = 0;
    private final int id;
    private String name = null;

    public Tag() {
        id = counter;
        counter++;
    }

    @Override
    public String getName() {
        if (name == null) {
            return "e" + id;
        } else {
            return name;
        }
    }

    public int getId() {
        return id;
    }

    public void setName(String name){
        this.name = name;
    }
}
