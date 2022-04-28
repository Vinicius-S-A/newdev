programa
//8.  Faça um programa que receba a idade de 10 pessoas e calcule e mostre:

//a) A quantidade de pessoas em cada faixa etária;
//b) A porcentagem de pessoas na primeira e na última faixa etária, com relação ao total de pessoas: 
//●	Até 15 anos
//●	De 16 a 30 anos
//●	De 31 a 45 anos
//●	De 46 a 60 anos
//●	Acima de 61 anos



{
	inteiro Pessoas, Pessoas15, Pessoas16_30, Pessoas31_45, Pessoas46_60, Pessoas61, idade
	
	
	funcao inicio()
	{
		Pessoas = 10
		Pessoas15 = 0 Pessoas16_30 = 0 Pessoas31_45 = 0 Pessoas46_60 = 0 Pessoas61 = 0


		
		enquanto(Pessoas > 0){
		escreva("\nDigite a idade da pessoa ", Pessoas, ":")	
		leia(idade)
		
		se(idade <= 15){
			Pessoas15 = Pessoas15 + 1
		}
		se(idade > 15 e idade < 31){
			Pessoas16_30 = Pessoas16_30 + 1
		}
		se(idade >= 31 e idade < 46){
			Pessoas31_45 = Pessoas31_45 + 1
		}
		se(idade >= 46 e idade < 60){
			Pessoas46_60 = Pessoas46_60 + 1
		}
		se(idade > 60){
			Pessoas61 = Pessoas61 + 1
		}

		
		Pessoas = Pessoas - 1
		}
	escreva("\n\n\nPessoas de até 15 anos:",Pessoas15)
	escreva("\nPessoas de 16 a 30 anos:",Pessoas16_30)
	escreva("\nPessoas de 31 a 45 anos:",Pessoas31_45)
	escreva("\nPessoas de 46 a 60 anos:",Pessoas46_60)
	escreva("\nPessoas acima de 61 anos:",Pessoas61)

	escreva("\n\nPorcentagem de pessoas de até 15 anos: ",(Pessoas15*100) / 10, "%")
	escreva("\nPorcentagem de pessoas acima de 61 anos: ",(Pessoas61*100) / 10, "%")//Como é 10 ao todo, não fiz uma conta complexa
	}
	


	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1475; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */