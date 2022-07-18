programa
{
	inclua biblioteca Util
	real REPET
	
	funcao mensagem()
	{
		escreva("\n\nRepetição")
	}
	
	funcao inicio()
	{
	escreva("Digite quantas vezes o programa deve repetir\n\n")
	leia(REPET)
	enquanto(REPET >= 0){ //Repetição
		REPET = REPET - 1
		Util.aguarde(200)
		mensagem()
	}
	}

	
	
		
	}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 308; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */