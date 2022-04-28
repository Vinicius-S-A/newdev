programa
{
	inteiro X = 0
	cadeia Meses[13]
	funcao inicio()
	{
	Meses[1] = "Janeiro" 
	Meses[2] = "Fevereiro"
	Meses[3] = "Março"
	Meses[4] = "Abril"
	Meses[5] = "Maio" 
	Meses[6] = "Junho"
	Meses[7] = "Julho"     
	Meses[8] = "Agosto"
	Meses[9] = "Setembro"
	Meses[10] = "Outubro"
	Meses[11] = "Novembro"
	Meses[12] = "Desembro" 
	    	
	enquanto(1==1){
		escreva("\n\nDigite um número correspondente a um mês.")
		leia(X)
		se(X > 0 e X < 12){
		escreva(Meses[X])
		}senao{
			pare
		}
	}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 486; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */