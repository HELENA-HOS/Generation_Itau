package heranca;

import heranca.Animal;

public class Cachorro extends Animal {


    public Cachorro(String nome, int idade) {
        super(nome, idade);
    }


    @Override
    public void emitirSom(){
        super.emitirSom();
        System.out.println("    CACHORRO");
        System.out.println("****************** \n");
    }

    @Override
    public void correr(){
        super.correr();
        System.out.println("    CACHORRO");
        System.out.println("****************** \n");
    }



}
