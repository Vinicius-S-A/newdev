programa
{
	
	inclua biblioteca Util //"COM CERTEZA" NÃO USEI MEU CÓDIGO ANTIGO :)
	real CUSTO, REGRADE3
	
	funcao inicio()
	{
		escreva("Insira o preço da compra do produto: \n\n")
		leia(CUSTO)
		escreva("\n\nCalculando...")
		Util.aguarde(3000)
		
		se(CUSTO <= 200){
		escreva("\nSeu produto custa MENOS que, ou igual a 200, portanto você terá um lucro de 50%")
		REGRADE3 = (CUSTO * 100 - CUSTO * 50) / 100
		escreva("\nSeu lucro portanto será: ", CUSTO - REGRADE3  )
		Util.aguarde(1000)
			
		}senao{
		escreva("\nSeu produto custa MAIS que 200, portanto você terá um lucro de 30%")
		REGRADE3 = (CUSTO * 100 - CUSTO * 30) / 100
		Util.aguarde(1000)
		escreva("\nSeu lucro portanto será: ", CUSTO - REGRADE3  )
			
		}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 82; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */