programa
{
	cadeia vars[5], L2[5]
	inteiro x
	funcao inicio()
	{
		x = 5
		para(inteiro i=0; i < 5; i++){
			escreva("Digite o item ", i, ":")
			leia(vars[i])
			x = x - 1
			L2[x] = vars[i]
		}
		escreva("\n\nInvertendo ordem:\n\n")
		para(inteiro i=0; i < 5; i++){
			escreva("\nValor do item", i,":", L2[i])

		}


		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 43; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */