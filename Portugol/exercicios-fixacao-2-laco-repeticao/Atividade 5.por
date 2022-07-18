programa
{
	inclua biblioteca Util
	inteiro Num, Loops, MultAntiga, Mult
	funcao inicio()
	{
		escreva("Escolha um número inteiro e o computador multiplicará todos os anteriores a ele:")
		leia(Num)
		MultAntiga = 0
		Loops = Num
		faca{
		
		
		
		
		se(Loops < Num){
		Loops = Loops - 1
		
		Mult = MultAntiga * Loops
		MultAntiga = Mult
		//MultAntiga = Mult
		escreva("")
		}senao{
			escreva(Num," * ")
			Loops = Loops - 1
		MultAntiga = Num * Loops 
		
		//Mult = (MultAntiga * 1) 
		//MultAntiga = Mult
		}
		
		
		se(Loops < Num e Loops > 1){
		escreva(Loops," * ")
		
		}senao{
			escreva(Loops," = ")
		}
		
		}enquanto(Loops > 1)
		escreva(Mult)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 184; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */