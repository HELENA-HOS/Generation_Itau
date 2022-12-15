import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class Exerc2 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        ArrayList<Integer> v = new ArrayList<Integer>();

        System.out.println("Informe três números inteiros.");
        System.out.println("Informe o primeiro número");
        int n1 = sc.nextInt();
        v.add(n1);

        System.out.println("Informe o segundo número");
        int n2 = sc.nextInt();
        v.add(n2);

        System.out.println("Informe o terceiro número");
        int n3 = sc.nextInt();
        v.add(n3);

        Collections.sort(v);

        System.out.println("Elementos em ordem crescente: "+v);


    }
}
