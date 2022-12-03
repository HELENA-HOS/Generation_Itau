programa
{
	
	funcao inicio()
	{
	
	/* 1) João, homem de bem, comprou um microcomputador para controlar o rendimento diário
de seu trabalho. Toda vez que ele traz um peso de tomate maior que o estabelecido pelo
regulamento do estado de São Paulo (50 quilos) deve pagar um multa de R$ 4,00 por quilo
excedente. João precisa que você faça um sistema que leia a variável P (peso de tomates) e
verifique se há excesso. Se houver, gravar na variável E (Excesso) e na variável M o valor
da multa que João deverá pagar. Caso contrário mostrar tais variáveis com o conteúdo
ZERO. */

		inteiro peso, excesso=0, multa=0
	
		escreva("Digite o peso de tomates\n")
		leia(peso)
	
		se (peso>50) {
		 excesso = peso - 50
		 multa = excesso * 4
		 escreva("Para o peso de " + peso + "kg, você deverá pagar multa de R$"+multa+" pelo excesso em "+excesso+ " kgs.")
		} senao {
			escreva("Para o peso de " + peso + " kg, o valor da multa é R$"+multa+" , pois o excesso é de "+excesso+ " kgs.")
		}	

	/*2) Elabore um sistema que leia as variáveis C e N, respectivamente código e número de
horas trabalhadas de um operário. E calcule o salário sabendo-se que ele ganha R$ 10,00
por hora. Quando o número de horas exceder a 50 calcule o excesso de pagamento
armazenando-o na variável E, caso contrário zerar tal variável. A hora excedente de
trabalho vale R$ 20,00. No final do processamento imprimir o salário total e o salário
excedente.	*/

		real valorHora = 10.0, salario, salarioExcedente=0.0, salarioTotal
		inteiro excessoHoras, codigo, numeroHoras
	
		escreva("Digite o código do funcionário\n")
			leia(codigo)

		escreva("Digite o número de horas trabalhadas\n")
			leia(numeroHoras)


		se (numeroHoras > 50) {
			excessoHoras = numeroHoras - 50
			salario = 50 * valorHora
			salarioExcedente = excessoHoras * 20
									
		} senao {
			salario = numeroHoras * valorHora
		}

		salarioTotal = salario + salarioExcedente

		escreva("Salário base: R$"+salario+"\n")
		escreva("Salário excedente: R$"+salarioExcedente+"\n")
		escreva("Salário total: R$"+salarioTotal+"\n")

	/*3) Desenvolva um sistema em que:
Leia 4 (quatro) números;
Calcule o quadrado de cada um;
Se o valor resultante do quadrado do terceiro for >= 1000, imprima-o e finalize;
Caso contrário, imprima os valores lidos e seus respectivos quadrados. */

		inteiro num1, num2, num3, num4, quad1, quad2, quad3, quad4
	
		escreva("Digite o primeiro número"+ "\n")
		leia(num1)
		quad1 = num1 * num1
	
		escreva("Digite o segundo número"+ "\n")
		leia(num2)
		quad2 = num2 * num2
	
		escreva("Digite o terceiro número"+ "\n")
		leia(num3)
		quad3 = num3 * num3
	
		escreva("Digite o quarto número"+ "\n")
		leia(num4)
		quad4 = num4 * num4
	
		se (quad3 >= 1000) {
			escreva("Valor do quadrado do terceiro: "+quad3)
		} senao {
			escreva("Primeiro número: "+num1 + "\n")
			escreva("Primeiro número ao quadrado: "+quad1+ "\n")
			escreva("Segundo número: "+num2 + "\n")
			escreva("Segundo número ao quadrado: "+quad2+ "\n")
			escreva("Terceiro número: "+num3 + "\n")
			escreva("Terceiro número ao quadrado: "+quad3+ "\n")
			escreva("Quarto número: "+num4 + "\n")
			escreva("Quarto número ao quadrado: "+quad4+ "\n")
		}

	/*4) Faça um sistema que leia um número inteiro e mostre uma mensagem indicando se este
número é par ou ímpar, e se é positivo ou negativo.*/

		inteiro numero
	
		escreva("Digite um número\n")
		leia(numero)
	
		se (numero < 0) {
			escreva("O número "+numero + " é negativo\n")
		} senao {
			escreva("O número "+numero + " é positivo\n")
		}
	
		se (numero % 2 == 0) {
			escreva("O número "+numero + " é par\n")
		}  senao {
			escreva("O número "+numero + " é ímpar\n")
		}

   /* 5) A Secretaria de Meio Ambiente que controla o índice de poluição mantém 3 grupos de
indústrias que são altamente poluentes do meio ambiente. O índice de poluição aceitável
varia de 0,05 até 0,25. Se o índice sobe para 0,3 as indústrias do 1º grupo são intimadas a
suspenderem suas atividades, se o índice crescer para 0,4 as industrias do 1º e 2º grupo são
intimadas a suspenderem suas atividades, se o índice atingir 0,5 todos os grupos devem ser
notificados a paralisarem suas atividades. Faça um sistema que leia o índice de poluição
medido e emita a notificação adequada aos diferentes grupos de empresas.*/

		real indicePoluicao
	
		escreva("Digite o nivel de poluição:\n")
		leia(indicePoluicao)
	
		se (indicePoluicao >= 0.3 e indicePoluicao < 0.4) {
			escreva("Notificação deve ser enviada às empresas do 1º Grupo")
		} senao se (indicePoluicao >= 0.4 e indicePoluicao < 0.5) {
			escreva("Notificação deve ser enviada às empresas do 1º e 2º Grupo")
		} senao se ( indicePoluicao >= 0.5) {
			escreva("Notificação deve ser enviada às empresas do 1º, 2º e 3º Grupo")
		} senao {
			escreva("Não há notificação a ser enviada.")
		}

	/*6) Elabore um sistema que dada a idade de um nadador classifique-o em uma das seguintes
categorias:
Infantil A = 5 a 7 anos
Infantil B = 8 a 11 anos
Juvenil A = 12 a 13 anos
Juvenil B = 14 a 17 anos
Adultos = Maiores de 18 anos */
	
		inteiro idade
	
		escreva("Digite a idade do nadador:\n")
		leia(idade)
	
		se (idade >=5 e idade <=7) {
			escreva("Nadador pertence à categoria Infantil A")
		} senao se (idade >=8 e idade <=11) {
			escreva("Nadador pertence à categoria Infantil B")
		} senao se (idade >=12 e idade <=13) {
			escreva("Nadador pertence à categoria Juvenil A")
		} senao se (idade >=14 e idade <=17) {
			escreva("Nadador pertence à categoria Juvenil B")
		} senao se (idade >= 18) {
			escreva("Nadador pertence à categoria Adultos")
		} senao {
			escreva("Nadador não pertence à nenhuma categoria")
		}

	/*7) Receber valores de base e altura de um triângulo e verificar se são valores válidos
(positivos maiores que zero). Em caso afirmativo, calcular a área do triângulo. */

		inteiro base, altura, area
	
		escreva("Digite o valor para base do triângulo:\n")
		leia(base)
	
		escreva("Digite o valor para altura do triângulo:\n")
		leia(altura)
	
		se (base > 0 e altura > 0) {
			area = (base * altura) / 2
			escreva("O valor da área é igual a: "+area)
		} senao {
			escreva("Valores inválidos para cálculo da área. ")
		}

	/*8) Construa um sistema para ler uma variável numérica N e imprimi-la somente se a mesma
for maior que 100, caso contrário imprimi-la com o valor zero.*/

		inteiro n
	
		escreva("Digite um número:\n")
		leia(n)
	
		se (n > 100) {
			escreva("Número informado: "+n)
		} senao {
			n=0
			escreva("Número informado: "+n)
		}
	
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 579; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */