programa
{
	real Num
	cadeia Ativ
	funcao inicio()
	{
		escreva("Escreva um número(você será alertado se ele for par ou ímpar):")
		leia(Num)
		se(Num > 0){
		Ativ = "Ativado"
		enquanto(Ativ == "Ativado"){

		se(Num > 2 ){
			Num = Num - 2
		}senao{
		Ativ = "Desativado"
		se(Num/2 == 1){
			escreva("Número Par!")
		}senao{
			escreva("Número ímpar")
		}
			
		}
			
		}
		}senao{
			escreva("Seu número tem que ser maior que 0!")
		}
		
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 431; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */