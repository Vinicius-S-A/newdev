programa
{
	inclua biblioteca Util
	inteiro Num
	funcao inicio()
	{
		escreva("Escreva um número para ser realizado a operação(Fará x3 até que seja maior que 100)\n\n")
		leia(Num)
		enquanto(Num < 100){
			Num = Num * 3

			escreva(Num,"\n")
			Util.aguarde(200)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 162; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */