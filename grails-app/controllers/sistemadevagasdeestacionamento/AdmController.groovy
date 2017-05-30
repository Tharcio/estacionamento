package sistemadevagasdeestacionamento

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AdmController {

    def index(Integer max) {

    }

    def list(Integer max){
        params.max = Math.min(max ?: 10, 100)
        [vagaInstanceList: Vaga.list(params),
         vagaInstanceTotal: Vaga.count()]

    }

    def save(){

    }

    def showHistory(){
        for(int i=0; i<AdmHelper.getTam(); i++){
            String numeroVaga = AdmHelper.getNumero(i)
            Vaga.findByNumero(numeroVaga)

            redirect "historico"
        }
    }
}