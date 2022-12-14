programa
{
	
	funcao inicio()
	{
	
	/*
	 ** PARA ** 
	 2- Desenvolver um sistema que efetue a soma de todos os números ímpares que são
	múltiplos de três e que se encontram no conjunto dos números de 1 até 500.*/

		inteiro soma=0
	
		para (inteiro x=1; x<=500; x++){
			se (x%2==1 e x%3==0) {
				soma = soma + x
			}
		}
		escreva("A soma dos números que atendem ao critério é "+soma)

	/*
	** ENQUANTO ** 
	2- Obtenha um número digitado pelo usuário e repita a operação de multiplicar ele por
	três (imprimindo o novo valor) até que ele seja maior do que 100. Ex.: se o usuário
	digita 5, deveremos observar na tela a seguinte sequência: 5 15 45 135. */

		inteiro numero
	
		escreva("Digite um numero\n")
		leia(numero)
	
		escreva(numero+" ")
		
		enquanto (numero < 100) {
			numero = numero * 3
			escreva (numero+" ")		
		}

	/*
	** FAÇA ENQUANTO ** 
	2- Faça um programa que pegue um número do teclado e calcule a soma de todos os
	números de 1 até ele. Ex.: o usuário entra 7, o programa vai mostrar 28, pois
	1+2+3+4+5+6+7=28.*/

		inteiro num, auxiliar=1, total=0
	
		escreva("Digite um numero\n")
		leia(num)


		faca {
			total = total + auxiliar
			auxiliar++
		} enquanto (auxiliar <= num)

		escreva(total)
	

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1231; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */