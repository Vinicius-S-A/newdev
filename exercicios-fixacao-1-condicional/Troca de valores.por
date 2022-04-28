programa
{
	inteiro Num1, Num2, Fantoche
	funcao inicio()
	{
		escreva("Escreva 2 valores distintos para ambos serem trocados.\nValor A:")
		
		leia(Num1)
		escreva("Valor B:")
		leia(Num2)

		
		Fantoche = Num1
		Num1 = Num2
		Num2 = Fantoche
		
		escreva("\n\nValor A:", Num1," Valor B:", Num2)
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 267; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */