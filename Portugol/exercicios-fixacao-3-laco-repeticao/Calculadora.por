programa
{
	cadeia Funcao
	real X, Y
	funcao inicio()
	{
		
		Funcao = "Ficar"
		enquanto(Funcao == "Ficar"){
			escreva("\n\nPara Divisão (D) Para multiplicação (M) Para Adição (A) Para Subtração (S) Para sair escreva (Sair)\n\n")
			leia(Funcao)

			se(Funcao == "D"){
				
			escreva("\nDigite o número a ser dividido:")
			leia(X)
			escreva("Digite o número divisor:")
			leia(Y)
			escreva("Resultado:",X / Y)

			
			}
			se(Funcao == "M"){
			escreva("\nDigite o número a ser Multiplicado:")
			leia(X)
			escreva("Digite o número Multiplicador:")
			leia(Y)
			escreva("Resultado:",X * Y)
			}
			se(Funcao == "A"){
			escreva("\nDigite o primeiro número:")
			leia(X)
			escreva("Digite o segundo número:")
			leia(Y)
			escreva("Resultado:",X + Y)
			}
			se(Funcao == "S"){
			escreva("\nDigite o primeiro número:")
			leia(X)
			escreva("Digite o segundo número:")
			leia(Y)
			escreva("Resultado:",X - Y)
			}
			se(Funcao == "Sair"){
				pare
			}

		Funcao = "Ficar"	
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 248; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */