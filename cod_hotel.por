programa
{
	
// Olá, professora! vou deixar dividido as questões por comentários!
	
	funcao inicio()
	{
	limpa()
	real opcao
	
	escreva("================================================================================\n")
	escreva ("Qual programa deseja iniciar?")
	escreva ("\n Gastos com garçons --------------- Digite: 1")
	escreva ("\n Quantidade de comida ------------- Digite: 2")
	escreva ("\n Auditórios ----------------------- Digite: 3")
	escreva ("\n Reservar restaurante ------------- Digite: 4 \n")
	leia (opcao)

	escreva("================================================================================\n")


	se (opcao == 1){
		 garcons()
		}
	se (opcao == 2){
		 qntComida()
		}
	se (opcao == 3){
		 auditorios()
		}
	se (opcao == 4){
		 restaurante()
		}
	se (opcao < 1 ou opcao > 4) {escreva ("Essa opção não existe!\n") inicio()}
	 
	}


	//-----------------------------------------------------------------------------------

	funcao garcons()
	{

		limpa()
		real ng
		escreva ("Quantidade de garçons: ")
		leia (ng)

		real h
		escreva ("Quantidade de horas: ")
		leia (h)
		escreva ("A quantidade gasta será: R$",ng * 10.5 * h,(".\n") )
		cadeia confirm 
		escreva("Aperte 'ENTER' para continuar\n")
		leia (confirm)
	inicio()
	}

// --------------------------------------------------------------------------

	funcao qntComida()
	{
		limpa()
		inteiro convidados
		escreva("Quantidade de convidados na festa: ")
		leia (convidados)
		
		se (convidados > 350 ) 
		{escreva ("quantidade de convidados superior à capacidade máxima\n")}
		senao {
			escreva ("A quantidade de café necessária é: " + convidados * 0.2 + " L\n")
			escreva ("A quantidade de água necessária é: " + convidados * 0.5 + " L\n")
			escreva ("A quantidade de salgadinhos necessária são: " + convidados * 7 + " unidades\n")
			} 
		cadeia confirm 
		escreva("Aperte 'ENTER' para continuar\n")
		leia (confirm)
		inicio()
		}

//-----------------------------------------------------------------------


		funcao auditorios()
{
	limpa()
		inteiro qntPessoas
		escreva("Número de pessoas: ")
		leia (qntPessoas)

		se(qntPessoas < 0 ou qntPessoas > 350) {escreva("Insira um número válido\n")}
		se (qntPessoas > 0 e qntPessoas <= 150){escreva("É recomendado usar o auditório Alfa\n")}
		se (qntPessoas > 150 e qntPessoas <= 220){escreva("É recomendado usar o auditório Alfa, sendo necessário adicionar: ",qntPessoas - 150," cadeiras\n")}
		se (qntPessoas > 220 e qntPessoas <= 350){escreva("É recomendado usar o auditório Beta\n")}
	cadeia confirm 
		escreva("Aperte 'ENTER' para continuar\n")
		leia (confirm)
		inicio()	
}		

//--------------------------------------------------------------

	funcao restaurante(){
limpa()
	cadeia nome
	escreva ("Escreva o nome de sua empresa: ")
	leia (nome)
	
	cadeia dia 
	escreva ("Formato: segunda, terça, quarta...\n")
	escreva ("Escreva o dia da semana que pretende reservar: ")
	leia (dia)
	
	inteiro hora
	escreva ("Formato: 1, 2, 13, 18...\n")
	escreva ("Escreva qual hora pretende reservar: ")
	leia (hora)

	se (dia == "segunda" ou dia == "terça" ou dia == "quarta" ou dia == "quinta" ou dia == "sexta") {
			limpa()
			se (hora >= 7 e hora <= 23){
			escreva ("Restaurante reservado para ",nome, " na " ,dia,  "-feira às ",hora, "h.")
			}
			senao{
			escreva ("Esse horário não está disponível, veja os horários:")
			escreva ("\nSegunda à Sexta - 7h até 23h\nsábado e domingo - 7h até 15h.")
			
			
			}}
	
	
	senao se (dia == "sabado" ou dia == "domingo") {
			limpa()
			se (hora >= 7 e hora <= 15){
			escreva ("Restaurante reservado para ",nome, " na " ,dia,  " às ",hora, "h.")}
			senao{
			escreva ("Esse horário não está disponível, veja os horários:")
			escreva ("\nSegunda à Sexta - 7h até 23h\nsábado e domingo - 7h até 15h.")
			
		
			}}	
	senao {
			limpa ()
			escreva ("Me parece que os dados foram inseridos incorretamente! Tente novamente.")
			}	
			
		cadeia confirm 
		escreva("\nAperte 'ENTER' para continuar\n")
		leia (confirm)
		inicio()	
		
			
}}


		
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3641; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */