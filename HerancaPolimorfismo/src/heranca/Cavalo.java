package heranca;

import heranca.Animal;

public class Cavalo extends Animal {

    public Cavalo(String nome, int idade) {
        super(nome, idade);
    }

    @Override
    public void emitirSom(){
        super.emitirSom();
        System.out.println("     CAVALO");
        System.out.println("****************** \n");
    }

    @Override
    public void correr(){
        super.correr();
        System.out.println("     CAVALO");
        System.out.println("****************** \n");
    }
}
