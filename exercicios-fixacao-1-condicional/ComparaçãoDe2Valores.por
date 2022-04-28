programa
{
	inclua biblioteca Util
	inteiro X,Y

	funcao inicio()
	{
		escreva("Diga 2 números e veremos qual é maior\n\n")
		leia(X)
		escreva("\n\nOk, agora diga o segundo\n\n")
		leia(Y)
		escreva("\n\nCalculando...\n\n")
		Util.aguarde(2000)
		se(X > Y){
		escreva(X," É maior que ",Y)
		}
		se(X < Y){
		escreva(Y," É maior que ",X)
		}
		se(X == Y){
		escreva(X," É igual a ",Y)
		}
		
	}
		
}


	
	
		
	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 51; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */