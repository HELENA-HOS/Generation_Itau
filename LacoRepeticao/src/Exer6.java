import java.util.Enumeration;
import java.util.Scanner;

public class Exer6 {
    public static void main(String[] args) {

//        Escrever um programa que receba vários números inteiros no teclado. E no
//        final imprimir a média dos números múltiplos de 3. Para sair digitar
//        0(zero).(DO...WHILE)

        Scanner sc = new Scanner(System.in);
        int soma = 0;
        int contador=0;
        int numero =0;

        do {
            System.out.println("Informe um número");
            numero = sc.nextInt();
                if(numero%3==0 & numero!=0) {
                    soma += numero;
                    contador++;
                }
        } while (numero!=0);

        int media = soma / contador;

        System.out.println("A média dos números múltiplos de 3 é igual a "+media);
    }
}
