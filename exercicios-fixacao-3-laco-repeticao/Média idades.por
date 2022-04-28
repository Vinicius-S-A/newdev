programa
{
	//6.  Faça um programa que receba várias idades e calcule e mostre a média das idades digitadas. 
	//Finalize digitando a idade igual a zero (Dica: usar “pare”, para sair do laço).
	funcao inicio()
	{
		inteiro Qt
		real Media, X, MediaAntiga
		X = 0
		Qt = 0
		Media = 0
		MediaAntiga = 0
		enquanto(1==1){
			Qt = Qt + 1	
		escreva("Digite a idade da pessoa número",Qt,":")	
		leia(X)

		se(X == 0){
			
			pare
		}senao{
		
		Media = (MediaAntiga + X) / Qt
		MediaAntiga = MediaAntiga + Media 
	
		}
		

			
		}
escreva("Média das idades:", Media)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 507; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */