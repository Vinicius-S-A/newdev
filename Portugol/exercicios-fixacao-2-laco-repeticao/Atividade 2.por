programa
{
	inteiro Qnt,Vez,Menor,Maior
	funcao inicio()
	{
		escreva("Olá, Por favor insira o tamanho de cada pessoa do grupo. (Em centímetros)")
		Qnt = 5 //Antes era 15, reduzi para 5 porque é menos trabalho👍👍
		Maior = 0
		Menor = 1000
		
		enquanto(Qnt > 0){
		escreva("\nTamanho Pessoa ",Qnt, ":") 
		leia(Vez)
		se(Vez > Maior){
			Maior = Vez
		}
		se(Vez < Menor){
			Menor = Vez
		}
			
			Qnt = Qnt - 1
		}
		escreva("A maior altura é de:",Maior)
		escreva("\nA menor altura é de:",Menor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 318; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */