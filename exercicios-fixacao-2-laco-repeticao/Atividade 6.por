programa
{
	inclua biblioteca Util
	inteiro Num, Loops, SomaAntiga, Soma
	funcao inicio()
	{
		escreva("Escolha um número inteiro e o computador somará todos os anteriores a ele.")
		leia(Num)
		SomaAntiga = 0
		Loops = 0
		faca{
		
			
		Loops = Loops + 1
		
		Soma = (SomaAntiga + Loops)
		se(Loops < Num){
		escreva(Loops," + ")
		SomaAntiga = Soma
		}senao{
			escreva(Loops," = ")
		}
		
		}enquanto(Loops < Num)
		escreva(Soma)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 386; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */