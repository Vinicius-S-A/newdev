programa
{
	real Votos, Percent
	cadeia Muni
	
	funcao inicio()
	{
	escreva("Insira aqui o nome do município: ")
	leia(Muni)
	escreva("Insira aqui a quantidade de votos do candidato: ")
		leia(Votos)
		se(Votos <= 200000){
		Percent = (Votos /200000 ) * 100


		
		escreva("\n\nMunicípio: ",Muni ,"\nEleitores: ", Votos, "\nPorcentagem de votos:", Percent, "%")
		se(Percent > 50){
		escreva("\nNão terá segundo Turno, Candidato ganhou.")
		}senao{
		escreva("\nTerá segundo Turno.")
		}


		
		}senao{
		escreva("Fraude detectada!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 537; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */