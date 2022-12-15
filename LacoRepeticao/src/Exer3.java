import java.util.Scanner;

public class Exer3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int menor = 0;
        int maior=0;
        int idade =0;

        do {
            System.out.println("Digite a sua idade");
            idade = sc.nextInt();
                if(idade<21 & idade>0) {
                    menor++;
                }

                if (idade>50){
                    maior++;
                }

        } while (idade!=-99);



        System.out.println("Total de pessoas com menos de 21 anos: "+menor);
        System.out.println("Total de pessoas com mais de 50 anos: "+maior);
    }
}
