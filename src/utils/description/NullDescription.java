
package utils.description;

public class NullDescription extends Description{
    
    //Susceptible de si aceptar ID
    public NullDescription() {
        super("");
    }
    
    @Override
    public String getId(){
        return null;
    }

}
