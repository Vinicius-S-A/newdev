programa
{
	inclua biblioteca Util
	inteiro Um, Dez, Cem, preco, pagamento, troco



	
	funcao inicio()
	{
		preco = Util.sorteia(1, 1000)
		escreva("Bem-vindo, para comprar o produto X, você deverá pagar ", preco, " reais, ou mais.")
		Util.aguarde(2000)
		escreva("\nQuanto irá pagar?(Em reais)\n\n")
		Um = 0
		Dez = 0
		Cem = 0
		leia(pagamento)
		troco = pagamento - preco
		
		se(pagamento >= preco){
			escreva("\nPagamento aceito! Seu troco será de:\n")

		enquanto(troco>= 100){
			troco = troco - 100
			Cem = Cem + 1
			
		}
		enquanto(troco >= 10){
			troco = troco - 10
			Dez = Dez + 1
		}
			enquanto(troco >= 1){
			troco = troco - 1
			Um = Um + 1
			
		}


			
		
		escreva(Cem," Notas de Cem\n",Dez," Notas de Dez\n", Um," Notas de Um")
			
		}senao{
			escreva("Pagamento recusado! Você está pagando menos pelo preço original!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 331; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */