package sistemadevagasdeestacionamento

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional


package sistemadevagasdeestacionamento

import org.apache.tools.ant.types.resources.comparators.Exists

@Singleton
public final class AdmHelper {
    private String mCurrentUsername

    public String getCurrentUsername() {
        return mCurrentUsername
    }

    public static void signAdm(String nome, String senha) {
        def admController = new admController()
        def Adm = new Adm(admName: nome, senha)
        admController.save(adm)
    }

    public void loginAdm(String username) {
        mCurrentUsername = username
    }

    public void logout() {
        mCurrentUsername = null
    }
}