import java.util.Scanner;

public class Exerc4 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("Informe um número");
        int numero = sc.nextInt();

        if(numero % 2 ==0 ) {
            System.out.println("O número "+numero+" é par e sua raíz quadrada é "+String.format("%.2f",Math.sqrt(numero)));
        } else {
            System.out.println("O número "+numero+ " é ímpar e ele ao quadrado é "+Math.pow(numero,2));
        }

    }
}
