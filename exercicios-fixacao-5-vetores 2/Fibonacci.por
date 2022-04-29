programa
{
	inteiro old=0, oldfibonacci=0, fibonacci[40]
	funcao inicio()
	{
		para(inteiro i =0; i < 40; i++){
		se(i > 1){
		old = fibonacci[i-2]
		fibonacci[i] = oldfibonacci + old	
		oldfibonacci = fibonacci[i]
		fibonacci[0] = 0
		fibonacci[1] = 1
		fibonacci[2] = 1
		
		}
		
		}

		para(inteiro i =0; i < 40; i++){
			escreva("\nValor ", i + 1, ":", fibonacci[i])
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 276; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */