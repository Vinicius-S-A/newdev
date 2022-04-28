programa
{
	real X, Valores[4], Med, Y
	
	funcao inicio()
	{
	
	para(inteiro i = 0; i < 4; i++){
	escreva("Insira o valor do item ", i, ":")
	leia(Valores[i])
	}
	
	escreva("\n\nMédia:", Mensagem(Valores[4]))
	}
	
	funcao real Mensagem(real Vals[])
	{
	Med = 0.0
	Y= 0.0
	para(inteiro i = 0; i > 4; i++){
	Y = Y + 1.0
	Med = (Med + Vals[i]) / i
	}
	retorne Med
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 219; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */