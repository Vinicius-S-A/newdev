programa
{
	inteiro numerosimpares[100], x=0
	funcao inicio()
	{
		para(inteiro i =0; i < 100; i++){
			
			se(i % 2 == 1){
				x = x + 1
				numerosimpares[x] = i

			}
		}
		para(inteiro i =0; i < 51; i++){
			escreva("\n",numerosimpares[i])
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 206; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */