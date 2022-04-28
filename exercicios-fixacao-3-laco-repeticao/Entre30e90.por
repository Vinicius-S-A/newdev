programa
{
	//5.  Faça um programa que receba 3 números e calcule e mostre a quantidade de números entre 30 e 90.
	inteiro Num, Quantidade
	real X
	funcao inicio()
	{
		
		Quantidade = 0
		Num = 0
		enquanto(Num < 3){
		Num = Num + 1
		escreva("Valor Número", Num,":")
		leia(X)
		
		se(X >= 30 e X <= 90){
			Quantidade = Quantidade + 1
		}
		
		
		
		}
		
		escreva("\n\nQuantidade de números entre 30 e 90: ", Quantidade)

		
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 416; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */