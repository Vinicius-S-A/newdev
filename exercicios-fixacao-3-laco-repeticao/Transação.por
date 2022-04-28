programa
{
	//4.  Uma loja utiliza o código V para transação à vista e P para transação a prazo. Faça um programa que receba código e valor de 5 transações. Calcule e mostre:
//●	O valor total das compras à vista
//●	O valor total das compras a prazo sabendo que essas compras possuem 10% de juros sobre o valor total
//●	O valor total das compras efetuadas
	
	inteiro qt
	real  ValorTotal, ValorAVista, ValorPrazo, ValorCompra
	cadeia Transacao
	funcao inicio()
	{
		qt = 5
		ValorPrazo = 0
		ValorTotal = 0
		ValorAVista = 0
		
		enquanto(qt > 0){

			escreva("\nEscreva o código de transação para a compra ", qt,":")
			leia(Transacao)
			escreva("\nEscreva o valor da compra ", qt,":")
			leia(ValorCompra)

			
			se(Transacao == "P"){

				
			ValorPrazo = ValorPrazo + (ValorCompra) + (ValorCompra / 10)
			
			
			}
			se(Transacao == "V"){
			ValorAVista = ValorAVista + ValorCompra
				
			}

			

			qt = qt - 1
		}
		ValorTotal = ValorPrazo + ValorAVista
		escreva("\n\nFinalizado.\n\nValorTotal = ", ValorTotal, "\nValor total das transações em prazo = ",ValorPrazo,"\nValor total das transações à vista = ",ValorAVista )

		

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 819; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */