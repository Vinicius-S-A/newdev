programa

//Uma loja deseja cadastrar 5 clientes e verificar se o faturamento 
//da loja foi superior à loja B (faturamento = 54 000). 
//Se o faturamento atingir esse valor mostre na tela uma mensagem contendo em quanto foi superado o faturamento.


{
	inteiro C,soma,Clientes
	funcao inicio()
	{
	soma = 0
	Clientes = 5
	enquanto(Clientes >= 1){	
		
	escreva("Insira o faturamento do cliente ", Clientes, ":")
	leia(C)
	Clientes = Clientes -1
	soma = soma + C
	}

	se(soma >= 54000){
		escreva("O faturamento foi superado em: ", soma - 54000, " Reais")
	}


	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 465; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */