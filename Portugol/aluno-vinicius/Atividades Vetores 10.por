programa
{
	inteiro Vet[10], X
	funcao inicio()
	{
	
		escreva("Para cada valor inserido, o mesmo será elevado ao quadrado")
		para(inteiro i = 0; i < 10; i++){
			escreva("Insira o valor do item ", i, ":")
			leia(X)
			Vet[i] = X * X
		}

		para(inteiro i = 0; i < 10; i++){
			escreva("\nVetor",i,": ",Vet[i]) 
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 325; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */