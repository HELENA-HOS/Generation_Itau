import java.util.Scanner;

public class Exerc4 {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("Informe 3 números inteiros e positivos.");
        System.out.println("Digite o primeiro número: ");
        double A = sc.nextDouble();

        System.out.println("Digite o segundo número: ");
        double B = sc.nextDouble();

        System.out.println("Digite o terceiro número: ");
        double C = sc.nextDouble();

        double R = Math.pow((A+B), 2);

        double S = Math.pow((B+C), 2);

        double D=(R+S)/2;

        System.out.println("Valor de R: "+ R);
        System.out.println("Valor de S: "+ S);
        System.out.println("Valor de D: "+ D);
    }
}
