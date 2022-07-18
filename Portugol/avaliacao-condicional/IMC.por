programa
{
	inclua biblioteca Util
	real PESO, IMC, ALTURA
	
	funcao inicio()
	{
		escreva("Veremos seu peso de acordo com o IMC")
		Util.aguarde(1000)
		escreva("\n\nInsira seu peso(KG):\n\n")
		leia(PESO)
		escreva("\n\nOk, agora sua altura (Em CM):\n\n")
		leia(ALTURA)
		escreva("\n\nCalculando...\n\n")
		Util.aguarde(2000)
		IMC = PESO / (ALTURA/100 * ALTURA/100)
		escreva(IMC)
		se(IMC < 18.5){
			escreva("\n\nVocê está abaixo do peso! seu IMC é: ", IMC)
		}
		se(IMC >= 18.5 e IMC < 25){
			escreva("\n\nVocê tem o peso normal! seu IMC é: ", IMC)
		}
		se(IMC >= 25 e IMC <= 30){
			escreva("\n\nVocê está acima do peso! seu IMC é: ", IMC)
		}
		se(IMC > 30){
			escreva("\n\nVocê é obeso!, seu IMC é: ", IMC)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 731; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */