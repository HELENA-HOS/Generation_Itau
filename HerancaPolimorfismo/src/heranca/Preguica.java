package heranca;

import heranca.Animal;

public class Preguica extends Animal {

    public Preguica(String nome, int idade) {
        super(nome, idade);
    }

    @Override
    public void emitirSom(){
        super.emitirSom();
        System.out.println("    PREGUIÇA");
        System.out.println("****************** \n");
    }

    public void subirEmArvore(){
        System.out.println("******************");
        System.out.println("Preguiça subindo na árvore!");
        System.out.println("****************** \n");
    }
}
