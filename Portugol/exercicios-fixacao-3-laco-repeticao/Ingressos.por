programa
{
	//3. Uma companhia de teatro deseja dar uma série de espetáculos. Fatos:
//●	A direção calcula que praticando o preço de R$5,00 serão vendidos 120 ingressos
//●	As despesas são fixas em R$ 200,00.
//●	Ao diminuir R$ 0,50 o preço dos ingressos espera-se que as vendas aumentem em 26 ingressos.
	real ValorIngressos, X,qt, Lucro
	funcao inicio()
	{
	X = 0
	Lucro = 0
	qt = 0
	ValorIngressos = 5
		

		enquanto(X < ValorIngressos){

			escreva("\n\nSe a venda for ",ValorIngressos - X, ", então:", "Venda de ingressos estimada:",qt + 120,"\nLucro estimado:", ((qt + 120) * ValorIngressos) - 200)
					X = X + 0.50
			qt = qt + 26
		}



		
		


		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 647; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */