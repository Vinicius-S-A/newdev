programa
{
	inclua biblioteca Util
	inteiro X, Loop, Soma, Total, Media
	funcao inicio()
	{
	 escreva("Somaremos números escolhidos pelo usuário até que seja recebido um valor negativo\n\n")
	 Loop = 0

	 	X = 0
		Soma = 0
		Total = 0

		
		enquanto(Loop < 1){
			Util.aguarde(1000)
		
	
		escreva("\nInsira um número:")
		leia(X)
		
		se(X >= 0){
		Soma = Soma + X
		Total = Total + 1
		 escreva("Soma: ",Soma)


		 
		}senao{
			Loop = 1
			escreva("Programa parou!\n\n")
			Util.aguarde(1000)
			escreva("Foram utilizados ao todo: ", Total, " Números,")
			escreva("\nA soma total foi de: ", Soma)
			Media = Soma / Total
			escreva("\nA média foi de: ", Media)
		}


		
		
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 333; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */