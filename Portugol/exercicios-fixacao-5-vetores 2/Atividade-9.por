programa
{
	cadeia Nomes[10], X, ACHOU="N"
	funcao inicio()
	{
		para(inteiro i =0; i < 10; i ++){
			escreva("Insira um nome:")
			leia(Nomes[i])
		}
		escreva("\n\nEscreva um nome para ser encontrado: ")
		leia(X)
		para(inteiro i =0; i < 10; i ++){
			se(X == Nomes[i]){
				escreva("ACHEI")
				ACHOU="S"
			}senao se(i == 9 e ACHOU == "N"){
				escreva("NÃO ACHEI")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 208; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */