programa
{
	
	inclua biblioteca Matematica --> mat

	
	funcao inicio()
	{
		//Exercício 1

		inteiro anos, meses, dias, totalDias

		escreva("Informe quantos anos, meses e dias compõem a sua idade")
		escreva("\n Quantos anos você tem?\n")
		leia(anos)

		escreva("\n Quantos meses?\n")
		leia(meses)

		escreva("\n Quantos dias?\n")
		leia(dias)

		totalDias = (anos*365)+(meses*30)+dias

		escreva("** Você possui aproximadamente " +totalDias+ " de vida/idade **")


		//Exercício 2

		inteiro anosIdade, mesesIdade, diasIdade, idadeDias

		escreva("Informe a sua idade em dias\n")
		leia(idadeDias)

		anosIdade = idadeDias / 365
		mesesIdade = (idadeDias % 365) / 30
		diasIdade = (idadeDias % 365) % 30
		

		escreva("** Você possui aproximadamente "+ anosIdade + " anos, " + mesesIdade + " meses e " + diasIdade + " dias de vida **")
		

		//Exercício 3

		
		inteiro segundosTotal, horasEvento, minutosEvento, segundosEvento

		escreva("Informe a duração do evento em segundos\n")
		leia(segundosTotal)

		horasEvento = segundosTotal / 3600
		minutosEvento = (segundosTotal % 3600) / 60
		segundosEvento = (segundosTotal % 3600) % 60
		

		escreva("** O evento durou aproximadamente "+ horasEvento + " horas, " + minutosEvento + " minutos e " + segundosEvento + " segundos **")


		//Exercício 4

		inteiro A, B, C, S
		real D, R

		escreva("\n Informe 3 números inteiros e positivos.\n")
		escreva("\n Digite o primeiro número: \n")
		leia(A)

		escreva("\n Digite o segundo número: \n")
		leia(B)

		escreva("\n Digite o terceiro número: \n")
		leia(C)

		R= mat.potencia((A+B), 2)

		S=mat.potencia((B+C),2)
		
		D=(R+S)/2

		escreva("Valor de R: "+ R+"\n")
		escreva("Valor de S: "+ S+"\n")
		escreva("Valor de D: "+ D+"\n")



		//Exercício 5

		inteiro nota1, nota2, nota3, media, soma

		escreva("\n Digite a primeira nota: \n")
		leia(nota1)

		escreva("\n Digite a segunda nota: \n")
		leia(nota2)

		escreva("\n Digite a terceira nota: \n")
		leia(nota3)

		soma = (nota1*2)+(nota2*3)+(nota3*5)

		media = soma / (2+3+5)

		
		escreva("\n Sua nota média é: "+ media)

			

		//Exercício 6		

		real x1, x2, y1, y2
		real raiz

		escreva("\n Digite o valor para X1: \n")
		leia(x1)

		escreva("\n Digite o valor para X2: \n")
		leia(x2)

		escreva("\n Digite o valor para Y1: \n")
		leia(y1)

		escreva("\n Digite o valor para Y2: \n")
		leia(y2)
		

		raiz = mat.raiz((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1), 2)

		escreva("O cálculo da distância é " + raiz)

		

		//Exercício 7
		
		inteiro a,b,c,d,e1,f, x, y

		escreva("\n Digite o valor para a: \n")
		leia(a)

		escreva("\n Digite o valor para b: \n")
		leia(b)

		escreva("\n Digite o valor para c: \n")
		leia(c)

		escreva("\n Digite o valor para d: \n")
		leia(d)

		escreva("\n Digite o valor para e: \n")
		leia(e1)

		escreva("\n Digite o valor para f: \n")
		leia(f)

		x = (c*e1-b*f)/(a*e1-b*d)

		y = (a*f-c*d)/(a*e1-b*d)

		escreva("O valor de X é igual a "+x)
		escreva("O valor de Y é igual a "+y)


		//Exercício 8

		real custoFabrica, comissaoDistribuidor, impostos, custoConsumidor

		escreva("\n Informe o custo de fábrica: \n")
		leia(custoFabrica)

		comissaoDistribuidor = custoFabrica * 0.28
		impostos = custoFabrica * 0.45

		custoConsumidor = custoFabrica + comissaoDistribuidor + impostos

		escreva("\n O valor de custos para o consumidor é: "+ custoConsumidor)


		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3354; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */