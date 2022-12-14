import java.util.Scanner;

public class Exerc3 {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("Informe a duração do evento em segundos");
        int segundosTotal = sc.nextInt();

        int horasEvento = segundosTotal / 3600;
        int minutosEvento = (segundosTotal % 3600) / 60;
        int segundosEvento = (segundosTotal % 3600) % 60;

        System.out.println("** O evento durou aproximadamente "+ horasEvento + " horas, " + minutosEvento + " minutos e " + segundosEvento + " segundos **");

    }
}
