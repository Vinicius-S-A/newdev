programa
{
	inteiro Num1, Num2, Num3, A1,A2,A3
	funcao inicio()
	{
		escreva("Insire 3 números (eles serão mostrados em ordem Crescente):")
		leia(Num1, Num2, Num3)
		
		se(Num1 > Num2 e Num1>Num3 ou Num2 > Num3 e Num2 > Num1 ou Num3 > Num1 e Num3 > Num2){
		analize(Num1, Num2, Num3)
		}senao{
			escreva("Os números não podem ser iguais!")
		}
	}

	funcao analize(inteiro A,inteiro B, inteiro C){
	
	se(A > B){
	


		se(A > C){
		A1 = A
		A2 = B
		A3 = C
	
		}senao{
		
		A1 = C
		A2 = A
		A3 = B
		}

	
	}senao{
		
		se(A > C){
		

			A1 = B
			A2 = A
			A3 = C
			
		
			}senao{
		
				se(C > B){
				A1 = C
				A2 = B
				A3 = A
				}senao{
				A1 = B
				A2 = C
				A3 = A
			}
		}
	}

	escreva("Ordem:",A1," " ,A2," " ,A3)
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 734; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */