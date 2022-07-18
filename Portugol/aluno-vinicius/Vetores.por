programa
{
	inclua biblioteca Util
	
	inteiro Selecionar
	cadeia Funcao, Var[21], Valor
	cadeia PRIMEIRO, SEGUNDO
	funcao inicio()
	{

		Funcao = "Ficar"
		enquanto(Funcao != "Sair"){
		escreva("\n(A) para adicionar, (R) para remover, (Listar) para listar, (Sair) para sair, ou (NOMEAR) para nomear aleatóriamente\n")
		leia(Funcao)

		se(Funcao == "Listar"){	//Listar
		para(inteiro i=1; i < 21; i++){
		escreva("\nVariável", i,"=", Var[i])
		}
		}
		
		se(Funcao == "R"){	//Remover
		escreva("\nSelecione qual item você deseja remover:")
		leia(Selecionar)
		Var[Selecionar] = ""		
		}

		se(Funcao == "A"){	//Adicionar
		para(inteiro i=1; i < 21; i++){
		se(Var[i] == ""){
		escreva("\nSelecione o valor do item ", i, ":")
		leia(Valor)
		Var[i] = Valor
		pare
		}
		}
		}

		se(Funcao == "Sair"){	//Sair
		
		escreva("\nSaindo...")
		pare
		}

		se(Funcao == "NOMEAR"){	//NOMEAR
		para(inteiro i=1; i < 21; i++){
		se(Var[i] == ""){
		cadeia nome = ""
		Nome(nome, i)
		
		}
		}
		}
		
		}	
	}	

	
	funcao Nome(cadeia V,inteiro Pos){
		
		inteiro Sort = Util.sorteia(1, 8), Sort2 = Util.sorteia(1, 8)
		se(Sort == 1){
			PRIMEIRO = "Opala"
		}
		se(Sort == 2){
			PRIMEIRO = "Coelho"
		}
		se(Sort == 3){
			PRIMEIRO = "Casa"
		}
		se(Sort == 4){
			PRIMEIRO = "Pessoa"
		}
		se(Sort == 5){
			PRIMEIRO = "Pneu"
		}
		se(Sort == 6){
			PRIMEIRO = "Sapato"
		}
		se(Sort == 7){
			PRIMEIRO = "Triângulo"
		}
		se(Sort == 8){
			PRIMEIRO = "Avião"
		}
		se(Sort2 == 1){
			SEGUNDO = "Bonito(a)"
		}
		se(Sort2 == 2){
			SEGUNDO = "Sujo(a)"
		}
		se(Sort2 == 3){
			SEGUNDO = "Relusente"
		}
		se(Sort2 == 4){
			SEGUNDO = "Amarelo(a)"
		}
				se(Sort2 == 5){
			SEGUNDO = "Azul"
		}
				se(Sort2 == 6){
			SEGUNDO = "Vermelho(a)"
		}
				se(Sort2 == 7){
			SEGUNDO = "Verde"
		}
				se(Sort2 == 8){
			SEGUNDO = ""
		}
		V = PRIMEIRO + " " + SEGUNDO
		Var[Pos] = V
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 974; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */