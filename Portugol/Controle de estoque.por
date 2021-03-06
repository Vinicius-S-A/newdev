programa
{
	inteiro Veiculos[200], Quantidade[200], Entrada[200], Saida[200], Disponiveis = 200, InserirNumero
	cadeia Nome[200],  Acao
	
	funcao inicio()
	{
		escreva("Bem-vindo...")
		enquanto(1+1 == 2){
		
		escreva("\nAtualmente há ",Disponiveis," Vagas para veículos\nDigite: \n(L) Para Listar \n(A) Para Adicionar \n(M) Para editar movimentação\n(R) Para remover veículo\n(S) Para sair\n")
		leia(Acao)

		se(Acao == "L"){
			Listar()
		}
		se(Acao == "A"){
			Adicionar()
		}
		se(Acao == "M"){
			Movimentacao()
		}

		se(Acao == "R"){
			Remover()
		}
		se(Acao == "S"){
			pare
		}
		}
	}

	funcao Listar()
	{
		limpa()
		para(inteiro i =0; i < 200; i++){
		
			se(Veiculos[i] == 1){ // Se for 1, será verdadeiro 
				escreva("Veículo ", i,": ", Nome[i], ", Entrada:", Entrada[i], ", Saída:", Saida[i], ", Saldo:", Quantidade[i],"\n")
			}senao{
				
			}
		}

	}

	funcao Adicionar()
	{
		
		se(Disponiveis > 0){ //Confere se há vagas disponíveis
		inteiro LocalVago = 0
		//-----------------------//		
				para(inteiro i =0; i < 200; i++){ //Procura um lugar vazio no vetor
					se(Veiculos[i] == 0){
						LocalVago = i
						Veiculos[i] = 1
						pare
					}
				}
		//-----------------------//		
					
		escreva("\n\nInsira o nome do veículo:")
		leia(Acao)
		Nome[LocalVago] = Acao
		escreva("\nInsira o estoque do veículo:")
		leia(InserirNumero)
		
		se(Disponiveis - InserirNumero < 0){ //Se a qnt de produtos ultrapassar a quantidade de estoque disponível
			limpa()
			escreva("!!!Não há espaço o suficiênte para essa quantidade de veículos!!!\n")
			Nome[LocalVago] = ""
			Veiculos[LocalVago] = 0
		}senao{
			Quantidade[LocalVago] = InserirNumero	
			Entrada[LocalVago] = InserirNumero
			Quantidade[LocalVago] = InserirNumero
			limpa()
			escreva("Operação Sucedida.\n")
			Disponiveis = Disponiveis - InserirNumero
		}
		
		
		}senao{
		limpa()
		escreva("\n\nNão há espaço disponível!")
		}
	}


	funcao Movimentacao()
	{
	
	escreva("\nDigite o código do veículo:")
	leia(InserirNumero)
	se(Veiculos[InserirNumero] != 0){//Confere se realmente tem um carro nessa posição do vetor
	inteiro Veic = InserirNumero
		
	escreva("\nDigite \n(+) Para entrada \n(-) Para saída\n")
	leia(Acao)
	
			se(Acao == "+"){ //Entrada
			escreva("\nDigite a entrada do veículo ", Nome[Veic], ":")
			leia(InserirNumero)
				se(Disponiveis - InserirNumero > 0){ //Confere se tem espaço disponível


				Disponiveis = Disponiveis - InserirNumero
				Quantidade[Veic] = Quantidade[Veic] + InserirNumero
				Entrada[Veic] = Entrada[Veic] + InserirNumero
				limpa()
				escreva("Operação sucedida\n")
				
				}senao{
					limpa()
				escreva("!!!Não há espaço o suficiênte para essa quantidade de veículos!!!\n")
				}
			
			
			}



			
			se(Acao == "-"){ //Saída
				escreva("\nDigite a saída do veículo ", Nome[Veic], ":")
				leia(InserirNumero)
				se(Disponiveis + InserirNumero <200 ){ //Confere se tem espaço disponível


				Disponiveis = Disponiveis + InserirNumero
				Quantidade[Veic] = Quantidade[Veic] - InserirNumero
				Saida[Veic] = Saida[Veic] + InserirNumero
				limpa()
				escreva("Operação sucedida\n")
				
				}senao{
				limpa()
				escreva("!!!Não há espaço o suficiênte para essa quantidade de veículos!!!\n")
				}
			}

		
	}senao{
		limpa()
		escreva("!!Esse veículo não existe!!\n")
	}

	}

	funcao Remover()
	{
		
		escreva("\n\nEscreva o código do veículo a ser removido:")
		leia(InserirNumero)
		inteiro Veic = InserirNumero
		se(Veiculos[Veic] == 1){ //Confere se o veículo está no vetor
			Disponiveis = Disponiveis + Quantidade[Veic]
			Veiculos[Veic] = 0
			Quantidade[Veic] =0
			Entrada[Veic] =0
			Saida[Veic]=0
			Nome[Veic] = ""
			limpa()
			escreva("Operação sucedida\n")
			
		}senao{
			limpa()
			escreva("!!Esse veículo não existe!!\n")
		}
		
	}


	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 860; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */