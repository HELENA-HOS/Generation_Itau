import java.util.Scanner;

public class Exerc2 {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("Informe a sua idade em dias");
         int idadeDias = sc.nextInt();

        int anosIdade = idadeDias / 365;
        int mesesIdade = (idadeDias % 365) / 30;
        int diasIdade = (idadeDias % 365) % 30;

        System.out.println("** Você possui aproximadamente "+ anosIdade + " anos, " + mesesIdade + " meses e " + diasIdade + " dias de vida **");
    }
}
