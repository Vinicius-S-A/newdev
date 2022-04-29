programa
{
	inteiro Vals[10], Pares[10], Impares[10]
	funcao inicio()
	{
		para(inteiro i = 0; i < 10; i++){
		escreva("Escreva um número: ")
		leia(Vals[i])

		se(Vals[i] % 2 ==0){
			Pares[AcharMaisBaixo(1)] = Vals[i]
		}senao{
			Impares[AcharMaisBaixo(2)] = Vals[i]
		}
		
		}


		escreva("\n\nListas:\n")

		escreva("\nPares:\n")
		para(inteiro i = 0; i < 10; i++){
			se(Pares[i] > 0){
			escreva("\nItem ",i," = ",Pares[i] / 2)
			}
		}
		escreva("\n\nÍmpares:\n")
		para(inteiro i = 0; i < 10; i++){
			se(Impares[i] > 0){
			escreva("\nItem ",i," = ",Impares[i] * 3)
			}
		}

		
	}




	
	funcao inteiro AcharMaisBaixo(inteiro Imparpar){
	inteiro Val=0
	se(Imparpar == 1){
	para(inteiro i = 0; i < 10; i++){
		se(Pares[i] == 0){
			Val = i
			pare
		}
	}
	}senao{
	para(inteiro i = 0; i < 10; i++){
		se(Impares[i] == 0){
			Val = i
			pare
		}
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
 * @POSICAO-CURSOR = 433; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */