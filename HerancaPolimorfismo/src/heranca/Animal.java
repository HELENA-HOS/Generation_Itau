package heranca;

public class Animal {

    private String nome;

    private int idade;

    public Animal(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public void emitirSom(){
        System.out.println("******************");
        System.out.println(" Emitindo som de");
    }

    public void correr(){
        System.out.println("******************");
        System.out.println("    CORREEEEE ");
    }


}
