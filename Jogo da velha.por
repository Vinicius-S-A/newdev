programa
{
	inclua biblioteca Util
	
cadeia matriz[3][3], JogadaABC, Vez="O", Continuar = "Sim", plr1, plr2, opc
inteiro x=0, JogadaNum, empate=0

	funcao inicio()
	{
	para(inteiro i =0; i < 3; i++){
		
		para(inteiro k =0; k < 3; k++){
			
		matriz[i][k] = "-"
		}
	}
	
	escreva("Insira o nome do player 1(X):")
	leia(plr1)
	escreva("\nInsira o nome do player 2(O):")
	leia(plr2)
 	Carregar()
	Jogar()

		
	}

	funcao Carregar(){
		
		limpa()
		escreva("\n                                                                 A B C")
		para(inteiro i =0; i < 3; i++){
			escreva("\n                                                               ", i, " ")
			para(inteiro k =0; k < 3; k++){
			
			escreva(matriz[i][k],  " ")
			}
		}
		se(Continuar == "Sim"){
		
		}senao{
			escreva("\n\nFim de jogo!\n")
			escreva("\nDeseja HUMILHAR seu oponente? (S) (N):\n")
			leia(opc)
			se(opc == "S"){
				escreva("\nchupaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
			}
		}
		se(Vez == "O" e Continuar == "Sim"){
			Vez = "X"
			escreva("\nVez do(a) ", plr1)
		}senao se(Continuar == "Sim"){
			Vez = "O"
			escreva("\nVez do(a) ", plr2)
		}
		Jogar()
		
		

		
	}

	funcao Jogar(){

		se(Continuar == "Sim"){
		escreva("\nInsira as coordenadas A-B-C:")
		leia(JogadaABC)
		escreva("Insira as coordenadas 0-1-2:")
		leia(JogadaNum)

		se(JogadaABC != "C" e JogadaABC != "B" e JogadaABC != "A"){
		escreva("\nPosição inválida, jogue denovo!")
		Jogar()
		}
		se(JogadaNum != 1 e JogadaNum != 2 e JogadaNum != 0){
		escreva("\nPosição inválida, jogue denovo!")
		Jogar()
		}

		se(JogadaABC == "A" e matriz[JogadaNum][0] == "-"){
		matriz[JogadaNum][0] = Vez
		}senao se(matriz[JogadaNum][0] != "-" e JogadaABC == "A"){
		escreva("\nPosição já está ocupada! jogue em outra posição!")
		Jogar()
		}
		se(JogadaABC == "B" e matriz[JogadaNum][1] == "-"){
		matriz[JogadaNum][1] = Vez	
		}senao se(matriz[JogadaNum][1] != "-" e JogadaABC == "B"){
		escreva("\nPosição já está ocupada! jogue em outra posição!")
		Jogar()
		}
		se(JogadaABC == "C" e matriz[JogadaNum][2] == "-"){
		matriz[JogadaNum][2] = Vez		
		}senao se(matriz[JogadaNum][2] != "-" e JogadaABC == "C"){
		escreva("\nPosição já está ocupada! jogue em outra posição!")
		Jogar()
		}

		Determinar()
		Carregar()
		}
	}

	funcao Determinar(){
		empate = 0
		para(inteiro i =0; i < 3; i++){
		
		para(inteiro k =0; k < 3; k++){
			
			se(matriz[i][k] == "-"){
				empate = empate + 1
			}
		}
		}	

		se(empate == 0){
			escreva("Não há vencedores, houve um empate")
			Continuar = "Não"
		}



		
		se(matriz[0][0] == "O" e matriz[1][0] == "O" e matriz[2][0] == "O"){
		escreva("\n\n", plr2, " ganhou!!!")
		Continuar = "Não"
		}
		se(matriz[0][1] == "O" e matriz[1][1] == "O" e matriz[2][1] == "O"){
		escreva("\n\n", plr2, " ganhou!!!")
		Continuar = "Não"
		}
		se(matriz[0][2] == "O" e matriz[1][2] == "O" e matriz[2][2] == "O"){
		escreva("\n\n", plr2, " ganhou!!!")
		Continuar = "Não"
		}
		se(matriz[0][0] == "O" e matriz[0][1] == "O" e matriz[0][2] == "O"){
		escreva("\n\n", plr2, " ganhou!!!")
		Continuar = "Não"
		}
		se(matriz[1][0] == "O" e matriz[1][1] == "O" e matriz[1][2] == "O"){
		escreva("\n\n", plr2, " ganhou!!!")
		Continuar = "Não"
		}
		se(matriz[2][0] == "O" e matriz[2][1] == "O" e matriz[2][2] == "O"){
		escreva("\n\n", plr2, " ganhou!!!")
		Continuar = "Não"
		}
		//
		se(matriz[0][0] == "O" e matriz[1][1] == "O" e matriz[2][2] == "O"){
		escreva("\n\n", plr2, " ganhou!!!")
		Continuar = "Não"
		}
		se(matriz[2][0] == "O" e matriz[1][1] == "O" e matriz[0][2] == "O"){
		escreva("\n\n", plr2, " ganhou!!!")
		Continuar = "Não"
		}


		
		se(matriz[0][0] == "X" e matriz[1][0] == "X" e matriz[2][0] == "X"){
		escreva("\n\n", plr1, " ganhou!!!")
		Continuar = "Não"
		}
		se(matriz[0][1] == "X" e matriz[1][1] == "X" e matriz[2][1] == "X"){
		escreva("\n\n", plr1, " ganhou!!!")
		Continuar = "Não"
		}
		se(matriz[0][2] == "X" e matriz[1][2] == "XO" e matriz[2][2] == "X"){
		escreva("\n\n", plr1, " ganhou!!!")
		Continuar = "Não"
		}
		se(matriz[0][0] == "X" e matriz[0][1] == "X" e matriz[0][2] == "X"){
		escreva("\n\n", plr1, " ganhou!!!")
		Continuar = "Não"
		}
		se(matriz[1][0] == "X" e matriz[1][1] == "X" e matriz[1][2] == "X"){
		escreva("\n\n", plr1, " ganhou!!!")
		Continuar = "Não"
		}
		se(matriz[2][0] == "X" e matriz[2][1] == "X" e matriz[2][2] == "X"){
		escreva("\n\n", plr1, " ganhou!!!")
		Continuar = "Não"
		}
		//
		se(matriz[0][0] == "X" e matriz[1][1] == "X" e matriz[2][2] == "X"){
		escreva("\n\n", plr1, " ganhou!!!")
		Continuar = "Não"
		}
		se(matriz[2][0] == "X" e matriz[1][1] == "X" e matriz[0][2] == "X"){
		escreva("\n\n", plr1, " ganhou!!!")
		Continuar = "Não"
		}
		
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1456; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */