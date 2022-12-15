import java.util.Scanner;

public class Exer2 {
    public static void main(String[] args) {

        //Ler 10 números e imprimir quantos são pares e quantos são ímpares. (FOR)

        Scanner sc = new Scanner(System.in);

        int par=0;
        int impar=0;

        for(int x=0; x < 101
                ; x++){
            System.out.println("Informe um número");
            int numero = sc.nextInt();
                if (numero%2==0) {
                    par++;
                }else {
                    impar++;
                }
        }
        System.out.println("Foram informados "+par+" número(s) par(es) e "+impar+" número(s) ímpar(es)");
    }
}