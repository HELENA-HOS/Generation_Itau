
import java.util.Scanner;

public class Exerc1 {


    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Informe quantos anos, meses e dias compõem a sua idade");
        System.out.println("Quantos anos você tem?");
        int anos = sc.nextInt();

        System.out.println("Quantos meses?");
        int meses = sc.nextInt();

        System.out.println("Quantos dias?");
        int dias = sc.nextInt();

        int totalDias = (anos*365)+(meses*30)+dias;

        System.out.println("** Você possui aproximadamente " +totalDias+ " dias de vida/idade **");

    }
}