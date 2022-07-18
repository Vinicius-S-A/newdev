programa
{
	inteiro Nums[5], x=0
	
	funcao inicio()
	{
	
		para(inteiro i = 0; i < 5; i ++){
			 escreva("Digite o valor do item ", i ,":")
			 leia(Nums[i])
		}
		para(inteiro i = 0; i < 5; i ++){
			 x = x + Nums[i]
		}
		escreva("\n\nValor da soma:", x)
		escreva("\n\nNúmeros digitados:")
		para(inteiro i = 0; i < 5; i ++){
		 escreva(Nums[i], " ")
		}
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 368; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */