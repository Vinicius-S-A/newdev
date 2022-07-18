programa
{
	inteiro Vet[8], X, Maior, Coluna
	funcao inicio()
	{
		Maior = 0
		para(inteiro i = 0; i < 8; i++){
		escreva("Digite o valor do item ", i, ":")
		leia(X)
		se(X > Maior){
		Maior = X
		Coluna = i
		}
		
		}
		

		escreva("\nO maior número dentre os items é: ", Maior, ", encontrado na coluna: ", Coluna)
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 242; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */