programa
{
	cadeia OPALAO
	real Consumo
	funcao inicio()
	{
		escreva("Insira o modelo so seu carro(A, B ou C):")
		leia(OPALAO)
		se(OPALAO == "A" ou OPALAO == "B" ou OPALAO == "C"){
			se(OPALAO == "A"){
			escreva("Insira quantos quilômetros o carro percorreu:")
				leia(Consumo)
				escreva("Litros consumidos: ", Consumo / 8)
			}
			se(OPALAO == "B"){
				leia(Consumo)
				escreva("Litros consumidos: ", Consumo / 9)
			}
			se(OPALAO == "C"){
				leia(Consumo)
				escreva("Litros consumidos: ", Consumo / 12)
			}


			
		}senao{
			escreva("\nSeu modelo de carro não existe!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 475; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */