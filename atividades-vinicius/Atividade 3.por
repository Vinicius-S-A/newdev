programa
{
	cadeia Nome1, Nome2, NomeFinal
	funcao inicio()
	{
		escreva("Insira o nome:")
		leia(Nome1)
		escreva("Insira o sobrenome:")
		leia(Nome2)
		escreva("\nNome completo:", Nomear(Nome1, Nome2))
	}

	funcao cadeia Nomear(cadeia N1, cadeia N2)
	{
	NomeFinal = N1+" "+N2
	retorne NomeFinal
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 307; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */