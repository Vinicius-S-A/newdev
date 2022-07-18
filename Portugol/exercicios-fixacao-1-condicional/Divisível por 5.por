programa
{
	real Num
	cadeia Ativ
	funcao inicio()
	{
		escreva("Escreva um número(se ele for divisível por 5, você será alertado):")
		leia(Num)
		Ativ = "Ativado"
		enquanto(Ativ == "Ativado"){

		se(Num > 10){
			Num = Num - 10
		}senao{
		Ativ = "Desativado"
		se(Num/5 == 1 ou Num/5 == 2){
			escreva("Número divisível por 5!")
		}senao{
			escreva("Número não divisível por 5!")
		}
			
		}
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 246; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */