programa


//Uma loja tem uma política de descontos conforme o valor da compra do cliente.
//●	Os descontos começam acima dos R$500
//●	A cada 100 reais acima dos R$500,00 o cliente ganha 1% de desconto cumulativo até 25%. Por exemplo: R$500 = 1% || R$600,00 = 2% ...
//Faça um programa que exiba essa tabela de descontos no seguinte formato:
//ValorDaCompra — porcentagemDeDesconto — valorFinal


{
	inteiro ValorDaCompra, PorcentagemDeDesconto, Conta, ValorFinal
	funcao inicio()
	{
	escreva("Insira o valor da compra:")
	leia(ValorDaCompra)
	Conta = ValorDaCompra
	PorcentagemDeDesconto = 0
	enquanto(Conta > 599 e PorcentagemDeDesconto < 25){
	Conta = Conta - 100	
	PorcentagemDeDesconto = PorcentagemDeDesconto + 1		
	}
	ValorFinal = ((ValorDaCompra * 100) - (ValorDaCompra * PorcentagemDeDesconto)) / 100
	
	escreva("\nValor da compra:", ValorDaCompra, "\nPorcentagem de desconto:", PorcentagemDeDesconto, "\nValor Final:", ValorFinal)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 950; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */