
package utils.description;

public class Description {
    private String id;
    private int size;
    
    
    public Description(String id) {
        this.id = id;
    }

    public String getId(){
        return id;
    }
    
    public void setId(String id){
        this.id = id;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }
    
    
}
