package sistemadevagasdeestacionamento

/**
 * Created by TH's on 29/05/2017.
 */
import org.apache.tools.ant.types.resources.comparators.Exists

@Singleton
public final class AdmHelper {
    private int i =1
    private String mCurrentAdm
    private String [] numeros = new String[i]

    public String mCurrentAdm() {
        return mCurrentAdm
    }

    public static void signAdm(String nome, String senha) {
        def AdmController adm = new AdmController()

        //def adm = new Adm(admName: nome, senha)
        //AdmController.save(adm)
    }

    public void add_numero(String numero){
        numeros[i-1] = numero
        i=i+1
    }

    public String getNumero(int i){
        return numeros[i]
    }

    public int getTam(){
        return numeros.length
    }

    public void loginAdm(String username) {
        mCurrentAdm = username
    }

    public void logout() {
        mCurrentAdm = null
    }
}
