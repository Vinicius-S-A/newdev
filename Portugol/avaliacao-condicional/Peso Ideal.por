programa
{
	inclua biblioteca Util
	
	real Altura
	cadeia Genero
	funcao inicio()
	{
		escreva("Hoje calcularemos seu peso ideal, de acordo com seu gênero e altura.\n\n")
		Util.aguarde(2000)
		escreva("Insira seu gênero (H) ou (M):\n\n")
		leia(Genero)
		se(Genero == "M"){
		escreva("Ok! Agora insira a sua  altura(Em CM):\n\n")
		leia(Altura)
		escreva("Calculando...\n\n")
		Util.aguarde(2000)
		escreva("Seu peso ideal deve ser em KG: ", (62.1 * Altura/100)-44.7)
		}
		se(Genero == "H"){
		escreva("Ok! Agora insira a sua altura:\n\n")
		leia(Altura)	
		escreva("Calculando...\n\n")
		Util.aguarde(2000)
		escreva("Seu peso ideal deve ser em KG: ", (72.7 * Altura/100)-58)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 410; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */