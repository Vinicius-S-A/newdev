programa
{
	inclua biblioteca Util
	inteiro Salario, Filhos, Abaixo, ricos, mediasalario, mediafilhos,MaiorSalario
	real PercentualRicos
	funcao inicio()
	{
			Abaixo = 0
			ricos = 0
			mediasalario = 0
			mediafilhos = 0
			MaiorSalario =0
		para(inteiro Habit= 5; Habit > 0; Habit--){
			Util.aguarde(200)

			escreva("\n\nInsira o Salário do Habitante ",Habit,":")
			leia(Salario)
			se(Salario > 100){
				ricos = ricos + 1
				se(Salario > MaiorSalario){
					MaiorSalario = Salario
				}
				
			}senao{
				Abaixo = Abaixo - 1
			}
			escreva("\n\nInsira quantidade de filhos do Habitante ",Habit,":")
			leia(Filhos)
			mediasalario = (mediasalario + Salario) / Habit
			mediafilhos = (mediafilhos + Filhos) / Habit

			
			

			
			
		}
		real realRicos = ricos
		PercentualRicos = (realRicos  / 5) * 100
		
		escreva("\n\nMédia de Salário dos habitantes:",mediasalario)
		escreva("\nMédia de Filhos dos habitantes:",mediafilhos)
		escreva("\nMaior Salário entre os habitantes:",MaiorSalario)
		escreva("\nPercentual de habitantes com salário maior que 100: ",PercentualRicos,"%")
	}
	

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 735; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */