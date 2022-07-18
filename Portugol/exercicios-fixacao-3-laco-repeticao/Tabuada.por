programa
{
	//7. Faça um programa que receba um número e usando laços de repetição calcule e mostre a tabuada desse número.
	funcao inicio()
	{

		inteiro Tabuada, Num
		 
		escreva("Insira um número:")
		leia(Num)
		Tabuada = 10
		enquanto(Tabuada > 0){
		

		escreva("\n",Num, ".", Tabuada, " = ", Num * Tabuada)
		Tabuada = Tabuada - 1
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 257; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */