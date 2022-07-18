programa
{
	real Num1,Num2,Num3
	funcao inicio()
	{
		escreva("Insira 3 números:")
leia(Num1)
leia(Num2)
leia(Num3)
		se(Num1 == Num2 ou Num1 == Num2 ou Num3 == Num2){
			
		}senao
		se(Num1 > Num2 e Num1 > Num3){
			escreva("\nO maior número será:", Num1)
		}
		se(Num2 > Num1 e Num2 > Num3){
		escreva("\nO maior número será:", Num2)
		}
		se(Num3 > Num2 e Num3 > Num1){
		escreva("\nO maior número será:", Num3)
		}

		se(Num1 == Num2 ou Num1 == Num2 ou Num3 == Num2){
		escreva("\nNúmeros idênticos!!")
		
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 186; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */