programa
{
	
	real nums[10]
	funcao inicio()
	{
		para(inteiro i = 0; i < 10; i ++){
			escreva("Digite o valor do item ", i, ":")
			leia(nums[i])
			nums[i] =  nums[i] * nums[i]
		}
		escreva("\n\n")
		para(inteiro i = 0; i < 10; i ++){
			escreva("\nItem ", i, " = ", nums[i])
			
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 202; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */