programa //Fiz essa maravilha durante a aula, enquanto já tinha terminado o exercício.

//IMPORTANTE
//IMPORTANTE
//IMPORTANTE
//Use capslock para as respostas, ex: "PEDRA", não "pedra"
//O algorítmo é ALEATÓRIO
//IMPORTANTE
//IMPORTANTE
//IMPORTANTE



{
	inclua biblioteca Util
	inteiro PC, USUARIO, VALOR, VALORPC
	cadeia escolhaa
	funcao inicio()
	{
		
		VALOR = 0
		VALORPC = 0
		escreva("Bem vindo ao pedra papel tesoura!\n")
		Util.aguarde(1000)
		escreva("Começando...\n")
		JOGO()

		
	}


	funcao jogada_do_PC(){
		
	VALORPC = Util.sorteia(1, 3)
	se (VALORPC == 1){
		 escreva("\nPC: PEDRA\n")
	}
		se (VALORPC == 2){
		 escreva("\nPC: PAPEL\n")	
	}
		se (VALORPC == 3){
		 escreva("\nPC: TESOURA\n")
	}

	Decidir()
	}

	funcao Decidir(){
		Util.aguarde(1000)
		escreva("\n")
		se (VALOR == 1){
			se (VALORPC == 1){
			escreva("Empate!")
			}
			se (VALORPC == 2){
			escreva("Você perdeu!")
			}
			se (VALORPC == 3){
			escreva("Você ganhou!")
			}
			
		}
		se (VALOR == 2){
			se (VALORPC == 1){
			escreva("Você ganhou!")
			}
			se (VALORPC == 2){
			escreva("Empate!")
			}
			se (VALORPC == 3){
			escreva("Você perdeu!")
			}
		}
		se (VALOR == 3){
						se (VALORPC == 1){
			escreva("Você perdeu!")
			}
			se (VALORPC == 2){
			escreva("Você ganhou!")
			}
			se (VALORPC == 3){
			escreva("Empate!")
			}
		}
	}



	funcao JOGO(){
		
		Util.aguarde(500)
		escreva("3\n")
		Util.aguarde(500)
		escreva("2\n")
		Util.aguarde(500)
		escreva("1\n")
		Util.aguarde(500)
		escreva("Escolha! PEDRA PAPEL ou TESOURA\n")
		leia(escolhaa)
		se(escolhaa == "PEDRA"){
			VALOR = 1
			escreva("\nUsuário: PEDRA\n")
		}
		se(escolhaa == "PAPEL"){
			VALOR = 2
			escreva("\nUsuário: PAPEL\n")
		}
		se(escolhaa == "TESOURA"){
			VALOR = 3
			escreva("\nUsuário: TESOURA\n")
		}
		jogada_do_PC()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 251; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */