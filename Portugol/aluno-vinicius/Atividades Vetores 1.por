programa
{
	inteiro Vet[5], val
	
	funcao inicio()
	{
		para(inteiro i=0; i < 5; i++){
			escreva("Insira o valor do vetor ", i, ":")
			leia(val)
			Vet[i] = val
		}
		
		escreva("\n\nValores primos:\n")
		para(inteiro i=0; i < 5; i++){
			acharprimo(Vet[i])	
			
		}
	}

	funcao acharprimo(inteiro Valor){
			se(Valor > 2 e Valor % 2 == 0 e Valor % Valor == 0 ou Valor > 3 e Valor % 3 == 0 e Valor % Valor == 0){

			}senao{
			
			escreva(Valor, " é um número primo\n")
			
			}
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 476; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */