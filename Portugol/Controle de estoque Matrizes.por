programa
{
inteiro Veiculos[200][4], Estoque=200, InserirNumero
cadeia Nome[200], InserirCadeia
	funcao inicio()
	{
		enquanto(1==1){
		
		escreva("\nAtualmente há ",Estoque," Vagas para veículos...\nDigite: \n(L) Para Listar \n(C) Para Cadastrar \n(M) Para editar movimentação\n(R) Para remover veículo\n(S) Para sair\n")
		leia(InserirCadeia)

		se(InserirCadeia == "L"){
			Listar()
		}
		se(InserirCadeia == "C"){
			Cadastrar()
		}
		se(InserirCadeia == "M"){
			Movimentacao()
		}

		se(InserirCadeia == "R"){
			Remover()
		}
		se(InserirCadeia == "S"){
			pare
		}
		}
	}

	funcao Listar(){
		limpa()
		para(inteiro i =0; i < 200; i++){
			se(Veiculos[i][0] == 1){
			escreva("Veículo ",i, ":", Nome[i], ", Entrada:",Veiculos[i][1],", Saída:",Veiculos[i][2], ", Saldo:",Veiculos[i][3],"\n")
			}senao{
				
			}
		}
	}
	funcao Cadastrar(){
		se(Estoque > 0){
		inteiro Produto=0
			para(inteiro i =0; i < 200; i++){
				se(Veiculos[i][0] == 0){
					Produto = i
					pare
				}
			}
		escreva("Escreva o nome do veículo:")
		leia(InserirCadeia)
		Nome[Produto] = InserirCadeia
		Veiculos[Produto][0] = 1
		limpa()
		escreva("Produto cadastrado")
		}senao{
			limpa()
			escreva("Não há espaço para a estocagem!")
		}
	}
	funcao Movimentacao(){
		inteiro Produto
		escreva("\nInsira o código do veículo")
		leia(InserirNumero)
		Produto = InserirNumero

		se(Veiculos[Produto][0] ==1){
		
		escreva("\n\n(+) Para entrada (-) Para saída (C) Para cancelar\n")
		leia(InserirCadeia)
		se(InserirCadeia == "+"){
			escreva("\nQuanto deve ser a entrada:")
			leia(InserirNumero)
			se(Estoque - InserirNumero > 0){
				limpa()
				Veiculos[Produto][1] = InserirNumero
				Estoque = Estoque - InserirNumero
				Veiculos[Produto][3] = Veiculos[Produto][3] + InserirNumero
			}senao{
				limpa()
				escreva("\nNão há espaço para estocagem")
			}
		}
		se(InserirCadeia == "-"){
			escreva("\nQuanto deve ser a saída:")
			leia(InserirNumero)
			se(Estoque + InserirNumero < 200 e Veiculos[Produto][1] - InserirNumero >= 0){
				limpa()
				Veiculos[Produto][2] = InserirNumero
				Estoque = Estoque + InserirNumero
				Veiculos[Produto][3] = Veiculos[Produto][3] - InserirNumero
			}senao{
				limpa()
				escreva("\nEsses números não batem")
			}
		}
		se(InserirCadeia == "C"){
			limpa()
			escreva("\nCancelado")
		}
		}senao{
			limpa()
			escreva("\nEsse veículo não existe")
		}
	}
	funcao Remover(){

		escreva("\nInsira o código do veículo:")
		leia(InserirNumero)
		inteiro seila = InserirNumero
		
		se(Veiculos[seila][0] ==1){
			Veiculos[seila][0] = 0
			Veiculos[seila][1] = 0
			Veiculos[seila][2] = 0
			Veiculos[seila][3] = 0
			Nome[seila] = ""
			escreva("\nVeículo Removido")
		}senao{
			
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2656; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {Veiculos, 3, 8, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */