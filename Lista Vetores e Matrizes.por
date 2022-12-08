programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
	/*
	1. Faça um programa que crie um vetor por leitura com 5 valores de pontuação de uma
atividade e o escreva em seguida. Encontre após a maior pontuação e a apresente.*/
	
		inteiro pontuacao[5], x, maiorNota=pontuacao[0]
	
		para (x=0; x<5; x++) {
			escreva("Digite uma pontuação: \n")
			leia(pontuacao[x])
		}
	
		para (x=0; x<5; x++) {
			escreva(pontuacao[x]+", ")
		}
	
		para (x=0; x<5; x++) {
			se (pontuacao[x] > maiorNota) {
				maiorNota = pontuacao[x]
			}
			
		}
	
		escreva ("\nMaior  pontuação é: "+ maiorNota)

/* 2. Um dado é lançado 10 vezes e o valor correspondente é anotado. Faça um programa
que gere um vetor com os lançamentos, escreva esse vetor. A seguir determine e
imprima a média aritmética dos lançamentos, contabilize e apresente também
quantas foram as ocorrências da maior pontuação.*/
	
		inteiro  x, contagem=0
		real dados[10], media, soma=0.0, elementos, maiorDado=0.0
	
		para (x=0; x<10; x++) {
			escreva("Digite um valor: \n")
			leia(dados[x])
		}
		
		escreva("Vetor gerado: [")
		para (x=0; x<10; x++) {
			escreva(dados[x]+", ")
		}
		escreva("]")

		para (x=0; x<10; x++) {
			soma += dados[x]
		}
		elementos = u.numero_elementos(dados)
		media = soma / elementos
		escreva("\n"+media)

		para (x=0; x<10; x++) {
			se (dados[x] > maiorDado) {
				maiorDado = dados[x]
			}
		}
		escreva ("\nMaior  dado é: "+ maiorDado)

		para (x=0; x<10; x++) {
			se (dados[x] == maiorDado) {
				contagem += 1
			}
		}
		escreva ("\nNúmero de ocorrências da maior pontuação: "+ contagem)	


/*3. Escreve um programa que lê duas matrizes N1 (4,6) e N2(4,6) e cria:
a) Uma matriz M1 cujos elementos serão as somas dos elementos de mesma posição
das matrizes N1 e N2;
b) Uma matriz M2 cujos elementos serão as diferenças dos elementos de mesma
posição das matrizes N1 e N2.*/

		inteiro N1[1][2]= {{4,6}},
			   N2[1][2]= {{4,6}}, 
			   M1[1][2], M2[1][2], l, c


		   para (l=0; l<1; l++) {
		   	para(c=0; c<2; c++) {
		   		M1[l][c]= N1[l][c]+N2[l][c]
		   	}
		   }

		   para (l=0; l<1; l++) {
		   	para(c=0; c<2; c++) {
		   		escreva("["+M1[l][c]+"]")
		   	}
		   	escreva("\n")
		   }

		   para (l=0; l<1; l++) {
		   	para(c=0; c<2; c++) {
		   		M2[l][c]= N1[l][c]-N2[l][c]
		   	}
		   }

		   para (l=0; l<1; l++) {
		   	para(c=0; c<2; c++) {
		   		escreva("["+M2[l][c]+"]")
		   	}
		   	escreva("\n")
		   }

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 234; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */