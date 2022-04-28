programa
{
	
	real Numero, Original
	cadeia ativacao
	funcao inicio()
	{
		escreva("Insira um número par ou ímpar! Se ele for par, somará 5, se for ímpar somará 8.\n\n")
		leia(Numero)
		Original = Numero
		ativacao = "Ativo"
		enquanto(ativacao == "Ativo"){
			
		se (Numero <= 2){
		ativacao = "Desativado"

		
		se(Numero/2 == 1){
			escreva("\n\nSeu número é par! Portanto somaremos 5\n\n")
			escreva(Original + 5)
		}senao{
			escreva("\n\nSeu número é ímpar! Portanto somaremos 8\n\n")
			escreva(Original + 8)
		}


		
		}senao{
			Numero = Numero - 2
		}
		
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 315; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */