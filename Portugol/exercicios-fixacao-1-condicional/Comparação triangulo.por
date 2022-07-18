programa
{
	inclua biblioteca Util
	inteiro Ang1, Ang2, Ang3
	
	funcao inicio()
	{
		escreva("Irei dizer que tipo de triângulo você tem aí, apenas me informe os ângulos dele.\n")
		leia(Ang1)
		escreva("\n")
		leia(Ang2)
		escreva("\n")
		leia(Ang3)
		escreva("\n")
		

		
		se(Ang1 + Ang2 + Ang3 == 180){
		
		se(Ang1 == Ang2 e Ang1 == Ang3){
			escreva("Seu triângulo é Equilátero!(Todos os lados iguais)\n")
		}

		
		se(
		Ang1 == Ang2 e Ang1 > Ang3
		ou
		Ang1 == Ang2 e Ang1 < Ang3
		ou
		Ang2 == Ang3 e Ang2 > Ang1
		ou
		Ang2 == Ang3 e Ang2 < Ang1
		ou
		Ang1 == Ang3 e Ang1 > Ang2
		ou
		Ang1 == Ang3 e Ang1 < Ang2
		){
			escreva("Seu triângulo é Isóceles!(Dois lados iguais)\n")
		}

		
		se(Ang1 > Ang2 e Ang1 > Ang3){
			se(Ang2 > Ang3 ou Ang3 > Ang2){
			escreva("Seu triângulo é Escaleno!(Três lados diferentes)\n")
			}	
		}

		se(Ang2 > Ang1 e Ang2 > Ang3){
			se(Ang1 > Ang3 ou Ang1 < Ang3){
			escreva("Seu triângulo é Escaleno!(Três lados diferentes)\n")
			}	
		}

		se(Ang3 > Ang1 e Ang3 > Ang2){
			se(Ang1 > Ang2 ou Ang1 < Ang2){
			escreva("Seu triângulo é Escaleno!(Três lados diferentes)\n")
			}	
		}

			
		}senao{
			escreva("Seu triângulo não existe, pois todos os lados devem somar 180!\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 487; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */