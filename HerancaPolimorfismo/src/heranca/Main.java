package heranca;

import heranca.Cachorro;
import heranca.Cavalo;
import heranca.Preguica;

public class Main {
    public static void main(String[] args) {

        Cachorro doguinho = new Cachorro("Doguinho",5);

        Cavalo pocoto = new Cavalo("Pocotó",2);

        Preguica soninho = new Preguica("Soninho",4);

        doguinho.emitirSom();
        doguinho.correr();

        pocoto.emitirSom();
        pocoto.correr();

        soninho.emitirSom();
        soninho.subirEmArvore();


    }
}