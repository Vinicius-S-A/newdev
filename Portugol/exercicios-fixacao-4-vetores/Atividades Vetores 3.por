programa
{
	inteiro Vet[10], Impar=0, Par=1
	
	funcao inicio()
	{
		para(inteiro i=0; i < 10; i++){
			escreva("Digite o valor do item ", i, ":")
			leia(Vet[i])

		}
		para(inteiro i=0; i < 10; i++){
			se(Vet[i] % 2 == 1){
				Impar = Impar + Vet[i]				
			}senao{
				Par = Par * Vet[i]
			}
			
		}

	
	escreva("\n\n\nMultiplicação dos valores PARES:",Par)
	escreva("\nSoma dos valores ÍMPARES:",Impar)
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 298; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */