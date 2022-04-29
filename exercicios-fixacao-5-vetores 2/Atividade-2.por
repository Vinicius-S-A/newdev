programa
{
	inteiro numerospares[100], x=0
	funcao inicio()
	{
		para(inteiro i =0; i < 100; i++){
			
			se(i % 2 == 0){
				x = x + 1
				numerospares[x] = i

			}
		}
		para(inteiro i =0; i < 50; i++){
			escreva("\n",numerospares[i])
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 23; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */