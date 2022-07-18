programa
{
	inteiro Base[20],N1[10],N2[10]
	
	
	funcao inicio()
	{
		para(inteiro i = 0; i < 20; i++){
		escreva("\nInsira um valor:")
		leia(Base[i])

		se(i % 2 == 0){
			N1[AcharMaisBaixo(i)] = Base[i]
		}senao{
			N2[AcharMaisBaixo(i)] = Base[i]
		}
		
		}
		escreva("Vetor separado 1:\n")
		para(inteiro i = 0; i < 10; i++){

			escreva("\n",N1[i])
		}

		escreva("\n\nVetor separado 2:\n")
		para(inteiro i = 0; i < 10; i++){

			escreva("\n",N2[i])
		}

	}

	funcao inteiro AcharMaisBaixo(inteiro XX){
	inteiro Val=0

	para(inteiro i = 0; i < 10; i++){
		se(N1[i] == 0){
			Val = i
			pare
		}
	}
	
	retorne Val
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 379; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */