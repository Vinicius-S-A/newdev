programa
{
	inteiro Nums[10], divisivel	
	funcao inicio()
	{
		para(inteiro i = 0; i < 10; i++){
			escreva("Digite o valor do item ", i, ":")
			leia(Nums[i])
		}
		escreva("\n\nAgora escreva um número e encontraremos seus divisíveis.")
		leia(divisivel)
		para(inteiro i = 0; i < 10; i++){
			inteiro Garbage = Nums[i]
			
			enquanto(Garbage > divisivel){
			Garbage = Garbage - divisivel}

			
				se(Garbage / divisivel == 1){
				escreva("\n",Nums[i], " é divisível por ", divisivel)
				}
	
		}
		
	}



}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 452; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */