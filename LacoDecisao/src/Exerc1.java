import java.util.Scanner;

public class Exerc1 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("Informe três números inteiros.");
        System.out.println("Informe o primeiro número");
        int n1 = sc.nextInt();

        System.out.println("Informe o segundo número");
        int n2 = sc.nextInt();

        System.out.println("Informe o terceiro número");
        int n3 = sc.nextInt();

        if(n1>n2 & n1>n3){
            System.out.println("O maior número é "+n1);
        } else if (n2>n1 & n2>n3) {
            System.out.println("O maior número é "+n2);
        }else {
            System.out.println("O maior número é "+n3);
        }
    }

}