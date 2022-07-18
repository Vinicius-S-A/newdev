programa
{
	inteiro NumerosPares[10], NumerosImpares[10], Num = 0, Pares =0, Impares = 0, FinalPar[10], FinalImpar[10], Concatenado[10]
		
	funcao inicio()
	{

		para (inteiro i=0; i < 10; i++){
		leia(Num)
		se(Num % 2 == 0){
			NumerosPares[Pares]= Num
			Pares++
		}senao{
			
			NumerosImpares[Impares]= Num
			Impares++
			
		}

		
		}
	Organizar(NumerosPares, "Par")
	Organizar(NumerosImpares, "Impar")
	
	}
	



	funcao Organizar(inteiro Table[], cadeia Imparpar){
		inteiro Maiores = 0, Menores = 0
		se( Imparpar == "Par"){
		para (inteiro i=0; i < Pares; i++){
			
			para (inteiro j=0; j < Pares; j++){
					Maiores = 0
					para (inteiro k=0; k < Pares; k++){ //Acha a posição
						se(Table[i] > Table[k] e Table[i] != Table[k]){
						Maiores++		
						}senao se(Table[i] == Table[k]){
							pare
						}
						
					}
					FinalPar[Maiores] = Table[i] 
					para (inteiro X=0; X < Pares; X++){
						se(FinalPar[X] ==0){
							FinalPar[X] = FinalPar[X-1]
							
						}
					
					}
				
	

			}

			
	
		}
		}senao{
			para (inteiro i=0; i < Impares; i++){
				para (inteiro j=0; j < Impares; j++){
					Menores = 0
					para (inteiro k=0; k < Impares; k++){ //Acha a posição
						se(Table[i] < Table[k] e Table[i] != Table[k]){
						Menores++		
						}senao se(Table[i] == Table[k]){
							//Table[i] = Table[k]
							pare
						}
						
					}
					FinalImpar[Menores] = Table[i] 
					para (inteiro X=0; X < Impares; X++){
						se(FinalImpar[X] ==	0){
							
							FinalImpar[X] = FinalImpar[X-1]
							
						}
					
					}
				}
	
		}
		}
		Concatenar()
	}

	funcao Concatenar(){
		inteiro x=0
		//para(inteiro i=0; i < 10; i ++){
			para(inteiro j=0; j < 10; j ++){
			se(FinalPar[j] != 0){
				Concatenado[j] = FinalPar[j]
			}senao{
				x = j
				pare
			}
			}

			para(inteiro k=0; k < 10-x; k ++){
			se(FinalImpar[k] != 0){
				Concatenado[k+x] = FinalImpar[k]
			}senao{
				pare
			}
			}



	//	}
	
	
	
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1529; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {FinalImpar, 3, 94, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */