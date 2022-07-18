programa
{
		
	inclua biblioteca Util
	real P1,P2,P3,P4,media1,media2
	funcao inicio()
	{
		escreva("Hoje veremos se você passou de ano, comparando suas médias do primeiro e segundo semestre\n\n")
		Util.aguarde(4000)
		escreva("Insira suas notas do primeiro semestre: \n\n")
		leia(P1)
		escreva("\n")
		leia(P2)
		escreva("\nPerfeito!\n")
		Util.aguarde(1000)
		escreva("Agora as do segundo por favor.\n")
		leia(P3)
		escreva("\n")
		leia(P4)
		Util.aguarde(1000)
		escreva("\nOk! Agora vamos calcular...\n")
		media1 = (P1 + P2) / 2
		media2 = (P3 + P4) / 2
		Util.aguarde(4000)
		escreva("\nSua média do primeiro semestre é: \n", media1)
		Util.aguarde(2000)
		escreva("\nAgora, sua média do segundo semestre é: \n", media2)
		Util.aguarde(2000)
		se(((media1 + media2) / 2) >= 7){
			escreva("\nParabéns!! Você passou com uma média de: ", (media1 + media2) / 2)
		}senao{
			escreva("\nParabéns!! Você REPROVOU com uma média de: ", (media1 + media2) / 2)
		
		}
	
	
	}

	}
	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 986; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */