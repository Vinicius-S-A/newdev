programa
{
	real P1,P2
	funcao inicio()
	{
		escreva("Calcularemos sua média hoje...\nEscreva a média de sua prova 1:")
		leia(P1)
		escreva("\nEscreva a média de sua prova 2:")
		leia(P2)
		se((P1 + P2) / 2 > 7){
			escreva("\nAprovado!")
		}senao{
			escreva("\nReprovado!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 272; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */