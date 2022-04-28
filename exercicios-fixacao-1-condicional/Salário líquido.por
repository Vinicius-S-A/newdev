programa
{
	
	inclua biblioteca Util
	real SALARIO, REGRADE3
	
	funcao inicio()
	{
		escreva("Insira seu salário para descobrir o valor líquido do mesmo: \n\n")
		leia(SALARIO)
		escreva("\n\nCalculando...")
		Util.aguarde(2000)
		
		se(SALARIO <= 2000){
		escreva("\nSeu salário é MENOR ou igual a 2000, portanto terá um desconto de 10%")
		REGRADE3 = (SALARIO * 100 - SALARIO * 90) / 100 //Eu sei que não é bem regra de três ;)
		escreva("\nSeu salário portanto será: ", SALARIO - REGRADE3  )
		Util.aguarde(1000)
			
		}senao{
		escreva("\nSeu salário é MAIOR que 2000, portanto terá um desconto de 20%")
		REGRADE3 = (SALARIO * 100 - SALARIO * 80) / 100
		Util.aguarde(1000)
		escreva("\nSeu salário portanto será: ", SALARIO - REGRADE3  )
			
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 519; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */