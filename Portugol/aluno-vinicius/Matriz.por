programa
{
	cadeia Alunos[3] = {"Bruno", "João", "Maria"}
	real Medias[3] = {0.0,0.0,0.0}
	real Notas[3][3] = {{7.0,7.0,7.0}, 
					{3.0,8.5,7.5}, 
					{7.0,2.5,10.0}}
	funcao inicio()
	{
	
	
	para(inteiro i=0; i < 3; i++){
		
			para(inteiro j=0; j < 3; j++){
			Medias[i] = (Notas[i][j] + Medias[i])
			
			}
			Medias[i] = Medias[i] / 3
			escreva("\nMédia de ", Alunos[i],":", Medias[i])
	}



	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 133; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {Medias, 4, 6, 6}-{Notas, 5, 6, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */