programa
{
	
	inteiro Atletas[11], media=0
	funcao inicio()
	{
		para(inteiro i = 1; i < 11; i ++){
			se(i >= 2){
			escreva("Digite a altura do atleta ", i, ":")
			leia(Atletas[i])
			media = (Atletas[i] + media) / 2
			escreva(media)
			}senao{
			escreva("Digite a altura do atleta ", i, ":")
			leia(Atletas[i])
			media = (Atletas[i] + media) / 1
			escreva(media)
			}
		}
		escreva("\n\n")
		escreva("Média dos atletas:", media, "\nAgora serão passados os atletas com altura maior a média\n\n")
		
		para(inteiro i = 1; i < 11; i ++){
			se(Atletas[i] > media){
			escreva("\nAtleta ", i, ", altura:", Atletas[i])
			}
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 500; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */