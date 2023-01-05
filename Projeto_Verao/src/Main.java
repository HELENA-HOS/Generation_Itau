import java.util.Random;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int opcao;

        int saldo = 100;


        do {
            System.out.println("Escolha uma das opções: "
                    + "\n 1 - Ver o saldo atual"
                    + "\n 2 - Parar de jogar e ficar com o salto atual"
                    + "\n 3 - Continuar jogando");

            opcao = entrada.nextInt();


            switch (opcao) {
                case 1:
                    System.out.println("O seu saldo é de " + saldo);
                    break;

                case 2:
                    System.out.println("Saldo até o momento: " + saldo);
                    System.out.println("Até a próxima!");
                    break;

                case 3:

                    if(saldo)
                    System.out.println("Iniciando jogo...");
                    System.out.println("*** Lançando o dado ***");
                    Random aleatorio = new Random();
                    int dado = aleatorio.nextInt(99) + 1;

                    System.out.println("*** Lançamento finalizado! ***");

                    if (dado < 50) {
                        saldo -= dado;
                        System.out.println("Que pena! Você perdeu " + dado + " do seu saldo.");

                    }
                    if (dado > 50) {
                        saldo += (dado/2);
                        System.out.println("Parabéns! Você ganhou " + dado + " no seu saldo!");
                    }



                    System.out.println("Jogo finalizado!");
                    break;
            }
        } while (opcao != 2 || saldo>=200 || saldo =<0);
    }
}