programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Arquivos --> arq
	inclua biblioteca Tipos --> tp
	inteiro CH_passiva_USUARIO //Chave de passiva
	inteiro CH_passiva_CPU     //Chave de passiva
	inteiro ataque_real  //Dano real causado (AMRADURA - DANO)
	inteiro cooldown_passiva_blitz_USUARIO = 1 //limitador da passiva do Blitz
	inteiro cooldown_passiva_blitz_CPU = 1 //limitador da passiva do Blitz
	cadeia Q="Q" ,W="W" ,E="E" ,R="R"  //variaveris das abilidades
	inteiro ABILIDADE_Q, ABILIDADE_W, ABILIDADE_E, ABILIDADE_R //Variaver que indicara qual sera a abilidade usada
	cadeia ABILIDADE //Variaver que indicara qual sera a abilidade usada
	inteiro ABILIDADE_CPU //Variaver que indicara qual sera a abilidade usada 
	inteiro Q_incorreto = 0,W_incorreto = 0,E_incorreto = 0,R_incorreto = 0 //Serve para caso digite errado tenha que digitar de novo uma abilidade valida
	inteiro ABILIDADE_incorreta = 0
	inteiro critico = 0 //Chances de dar critico
	inteiro jogada_USUARIO = 0 //Aucilia na ordem de ataque
	inteiro jogada_CPU = 0//Aucilia na ordem de ataque
	inteiro Ordem_dos_Ataques //Indicador da sequancia do ataque
	cadeia vencedor, perdedor

	//////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////
		cadeia  CH_nome_USUARIO         // Variavel do nome
		inteiro USUARIO_vida            // VIDA
		inteiro USUARIO_ad	            // Dano Melle
		inteiro USUARIO_ap              // Dano Magico
		real    USUARIO_as              // Ataque speed
		inteiro USUARIO_regen           // Regeneracao de vida
		inteiro USUARIO_armmor          // Armadura de dano real
		inteiro USUARIO_armmor_ap       // Armadura de dano magico                                                  CREATE 
		cadeia USUARIO_abilidade_Q      // Abilidade Q													   BY:
		cadeia USUARIO_abilidade_W      // Abilidade W													     VITOR JOSE STAHELIN
		cadeia USUARIO_abilidade_E      // Abilidade E														(vitorjosestahelin@estudante.sc.senai.br)
		cadeia USUARIO_abilidade_R      // Abilidade R
		cadeia USUARIO_nome_abilidade_Q //Nome da abildade Q
		cadeia USUARIO_nome_abilidade_W //Nome da abildade W
		cadeia USUARIO_nome_abilidade_E //Nome da abildade E
		cadeia USUARIO_nome_abilidade_R //Nome da abildade R
	//////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////
		cadeia  CH_nome_CPU         // Variavel do nome	
		inteiro CPU_vida            // VIDA
		inteiro CPU_ad	             // Dano Melle
		inteiro CPU_ap              // Dano Magico
		real    CPU_as	             // Ataque speed
		inteiro CPU_regen           // Regeneracao de vida
		inteiro CPU_armmor          // Armadura de dano real
		inteiro CPU_armmor_ap       // Armadura de dano magico
		cadeia CPU_abilidade_Q      // Abilidade Q
		cadeia CPU_abilidade_W      // Abilidade W
		cadeia CPU_abilidade_E      // Abilidade E
		cadeia CPU_abilidade_R      // Abilidade R
		cadeia CPU_nome_abilidade_Q //Nome da abildade Q
		cadeia CPU_nome_abilidade_W //Nome da abildade W
		cadeia CPU_nome_abilidade_E //Nome da abildade E
		cadeia CPU_nome_abilidade_R //Nome da abildade R
	//////////////////////////////////////////////////////////////////////////////////
		
	
	funcao inicio()
	{
		escreva("\n 						League OFF ON")
		escreva("\n 					   Jogo de simulacao de batalha;")
		escreva("\n 				   Utilizando o champions do League Of Leguends.")
		u.aguarde(0)
		
		selecao_do_campeao_usuario()
		
	}

	funcao selecao_do_campeao_usuario()
	{
		inteiro CH_escolido //Campeoes escolidos 
		escreva("\n\n\nEscolha um dos Campeoes abaixo para jogar:")
		escreva("\nBlitzcrank --- |1")
		escreva("\nDravem ------- |2")
		escreva("\nLux ---------- |3")
		escreva("\nDr.Mundo ----- |4")
		escreva("\nWarwick ------ |5")
		escreva("\nEscolha: ")
		leia(CH_escolido)
		
		escolha(CH_escolido)
		{
			caso 1: //Blitzcrank
				   
				   CH_nome_USUARIO =     "Blitzcrank"
				   USUARIO_vida =	     2500
				   USUARIO_ad =	     60
				   USUARIO_ap =          120
				   USUARIO_as =	     1.00
				   USUARIO_regen =	     20
				   USUARIO_armmor =      30
				   USUARIO_armmor_ap =   32
				   CH_passiva_USUARIO =  cooldown_passiva_blitz_USUARIO
				   USUARIO_abilidade_Q = "BlitzQ_USUARIO"
				   USUARIO_abilidade_W = "BlitzW_USUARIO"
				   USUARIO_abilidade_E =	"BlitzE_USUARIO"
				   USUARIO_abilidade_R = "BlitzR_USUARIO"
				   USUARIO_nome_abilidade_Q = "Puxao Bionico"
			        USUARIO_nome_abilidade_W = "Turbo"
			        USUARIO_nome_abilidade_E = "Punho do Poder"
			        USUARIO_nome_abilidade_R = "Campo Estatico"


				   
				   selecao_do_campeao_CPU()
			pare
			caso 2: //Dravem
				   CH_nome_USUARIO =      "Dravem"
				   USUARIO_vida =	      1220
				   USUARIO_ad =	      150
				   USUARIO_ap =           0
				   USUARIO_as =	      1.7
				   USUARIO_regen =	      10
				   USUARIO_armmor =	      19
				   USUARIO_armmor_ap =    21
				   CH_passiva_USUARIO =   2
				   USUARIO_abilidade_Q =  "DravemQ_CPU"
				   USUARIO_abilidade_W =  "DravemW_CPU"
				   USUARIO_abilidade_E =  "DravemE_CPU"
				   USUARIO_abilidade_R =  "DravemR_CPU"
				   USUARIO_nome_abilidade_Q = "Revolucao do Machado"
				   USUARIO_nome_abilidade_W = "Adrenalina"
				   USUARIO_nome_abilidade_E = "Sai da Frente"
				   USUARIO_nome_abilidade_R = "Reta da Morte"
				   
				   selecao_do_campeao_CPU()
			pare
			caso 3: //Lux
				   CH_nome_USUARIO =      "Lux"
				   USUARIO_vida =         1050
				   USUARIO_ad =	      50
				   USUARIO_ap =           200
				   USUARIO_as =	      1.19
				   USUARIO_regen =        10
				   USUARIO_armmor =       19
				   USUARIO_armmor_ap =    30
				   CH_passiva_USUARIO =   3
				   USUARIO_abilidade_Q =  "LuxQ_CPU"
				   USUARIO_abilidade_W =  "LuxW_CPU"
				   USUARIO_abilidade_E =  "LuxE_CPU"
				   USUARIO_abilidade_R =  "LuxR_CPU"
				   USUARIO_nome_abilidade_Q = "Ligacao da Lux"
				   USUARIO_nome_abilidade_W = "Barreira Prisma"
				   USUARIO_nome_abilidade_E = "Singularida Lucente"
				   USUARIO_nome_abilidade_R = "Centelha Final"
				   
				   selecao_do_campeao_CPU()
			pare
			caso 4: //Dr.Mundo
			        CH_nome_USUARIO =      "De.Mundo"
				   USUARIO_vida =         3000
				   USUARIO_ad =           100
				   USUARIO_ap =           94
				   USUARIO_as =           1.2
				   USUARIO_regen =        25
				   USUARIO_armmor =       35
				   USUARIO_armmor_ap =    40
				   CH_passiva_USUARIO =   4
				   USUARIO_abilidade_Q =  "Dr.MundoQ_CPU"
				   USUARIO_abilidade_W =  "Dr.MundoW_CPU"
				   USUARIO_abilidade_E =  "Dr.MundoE_CPU"
				   USUARIO_abilidade_R =  "Dr.MundoR_CPU"
				   USUARIO_nome_abilidade_Q = "Cutelo Infectado"
				   USUARIO_nome_abilidade_W = "Agonia Ardente"
				   USUARIO_nome_abilidade_E = "Masoquismo "
				   USUARIO_nome_abilidade_R = "Sadismo"
				   
				   selecao_do_campeao_CPU()
			pare
			caso 5: //Warwick
				   CH_nome_USUARIO =      "Warwick"
				   USUARIO_vida =	      1800
				   USUARIO_ad =	      120
				   USUARIO_ap =           0
				   USUARIO_as =	      2.0
				   USUARIO_regen =	      20
				   USUARIO_armmor =       22
				   USUARIO_armmor_ap =    22
				   CH_passiva_USUARIO =   5
				   USUARIO_abilidade_Q =  "WarwickQ_CPU"
				   USUARIO_abilidade_W =  "WarwickW_CPU"
				   USUARIO_abilidade_E =  "WarwickE_CPU"
				   USUARIO_abilidade_R =  "WarwickR_CPU"
				   USUARIO_nome_abilidade_Q = ""
				   USUARIO_nome_abilidade_W = ""
				   USUARIO_nome_abilidade_E = ""
				   USUARIO_nome_abilidade_R = ""
				   
				   selecao_do_campeao_CPU()
			pare

			caso contrario: limpa()
						 escreva("Voce botou um opsao invalida, tente novamente.")
						 selecao_do_campeao_usuario()
			
		}
	}
	funcao selecao_do_campeao_CPU()
	{
		inteiro  CH_inimigo //Campeao inimigo
		////////////////////////////////////////

		
		escreva("\n\n\nEscolha um dos Campeoes abaixo para lutar contra:")
		escreva("\nBlitzcrank --- |1")
		escreva("\nDravem ------- |2")
		escreva("\nLux ---------- |3")
		escreva("\nDr.Mundo ----- |4")
		escreva("\nWarwick ------ |5")
		escreva("\nEscolha: ")
		leia(CH_inimigo)
		escolha(CH_inimigo)
		{
			caso 1: //Blitzcrank
				   CH_nome_CPU =        "Blitzcrank"
				   CPU_vida =	         2500
				   CPU_ad =	         60
				   CPU_ap =             120
				   CPU_as =	         1.00
				   CPU_regen =	         20
				   CPU_armmor =         30
				   CPU_armmor_ap =      32
				   CH_passiva_CPU =     1
				   CPU_abilidade_Q =    "BlitzQ_CPU"
				   CPU_abilidade_W =    "BlitzW_CPU"
				   CPU_abilidade_E =    "BlitzE_CPU"
				   CPU_abilidade_R =    "BlitzR_CPU"
				   CPU_nome_abilidade_Q = "Puxao Bionico"
			        CPU_nome_abilidade_W = "Turbo"
			        CPU_nome_abilidade_E = "Punho do Poder"
			        CPU_nome_abilidade_R = "Campo Estatico"
				   
				   
				   Batalha()
			pare
			caso 2: //Dravem 
			        CH_nome_CPU =      "Dravem"
				   CPU_vida =	       1220
				   CPU_ad =	       150
				   CPU_ap =           0
				   CPU_as =	       1.7
				   CPU_regen =	       10
				   CPU_armmor =       19
				   CPU_armmor_ap =    21
				   CH_passiva_CPU =   2
				   CPU_abilidade_Q =  "DravemQ_CPU"
				   CPU_abilidade_W =  "DravemW_CPU"
				   CPU_abilidade_E =  "DravemE_CPU"
				   CPU_abilidade_R =  "DravemR_CPU"
				   CPU_nome_abilidade_Q = "Revolucao do Machado"
				   CPU_nome_abilidade_W = "Adrenalina"
				   CPU_nome_abilidade_E = "Sai da Frente"
				   CPU_nome_abilidade_R = "Reta da Morte"
				   
				   Batalha()
			pare
			caso 3: //Lux
			        CH_nome_CPU =      "Lux"
				   CPU_vida =         1050
				   CPU_ad =	       50
				   CPU_ap =           200
				   CPU_as =	       1.19
				   CPU_regen =        10
				   CPU_armmor =       19
				   CPU_armmor_ap =    30
				   CH_passiva_CPU =   3
				   CPU_abilidade_Q =  "LuxQ_CPU"
				   CPU_abilidade_W =  "LuxW_CPU"
				   CPU_abilidade_E =  "LuxE_CPU"
				   CPU_abilidade_R =  "LuxR_CPU"
				   CPU_nome_abilidade_Q = "Ligacao da Lux"
				   CPU_nome_abilidade_W = "Barreira Prisma"
				   CPU_nome_abilidade_E = "Singularida Lucente"
				   CPU_nome_abilidade_R = "Centelha Final"
				   
				   
				   
				   Batalha()
			pare
			caso 4: //Dr.Mundo
			        CH_nome_CPU =      "Dr.Mundo"
				   CPU_vida =         3000
				   CPU_ad =           100
				   CPU_ap =           94
				   CPU_as =           1.2
				   CPU_regen =        25
				   CPU_armmor =       35
				   CPU_armmor_ap =    40
				   CH_passiva_CPU =   4
				   CPU_abilidade_Q =  "Dr.MundoQ_CPU"
				   CPU_abilidade_W =  "Dr.MundoW_CPU"
				   CPU_abilidade_E =  "Dr.MundoE_CPU"
				   CPU_abilidade_R =  "Dr.MundoR_CPU"
				   CPU_nome_abilidade_Q = "Cutelo Infectado"
				   CPU_nome_abilidade_W = "Agonia Ardente"
				   CPU_nome_abilidade_E = "Masoquismo "
				   CPU_nome_abilidade_R = "Sadismo"
				   
				   
				   Batalha()
			pare
			caso 5: //Warwick
			        CH_nome_CPU =      "Warwick"
				   CPU_vida =	       1800
				   CPU_ad =	       120
				   CPU_ap =           0
				   CPU_as =	       2.0
				   CPU_regen =	       20
				   CPU_armmor =       22
				   CPU_armmor_ap =    22
				   CH_passiva_CPU =   5
				   CPU_abilidade_Q =  "WarwickQ_CPU"
				   CPU_abilidade_W =  "WarwickW_CPU"
				   CPU_abilidade_E =  "WarwickE_CPU"
				   CPU_abilidade_R =  "WarwickR_CPU"
				   CPU_nome_abilidade_Q = "Ataque sedento"
				   CPU_nome_abilidade_W = "Chamado dos Cacadores"
				   CPU_nome_abilidade_E = "Aroma do Sangue"
				   CPU_nome_abilidade_R = "Coercao Infinita"
				   
				   Batalha()
			pare

			caso contrario: limpa()
						 escreva("Voce botou um opsao invalida, tente novamente.")
						 selecao_do_campeao_CPU()
			
		}
	}

	//////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////
				//Fucoes de abilidades dos Campeoes/ USUARIO

	funcao Abilidade_Q()
	{
		se(USUARIO_abilidade_Q == "BlitzQ_USUARIO")
		{
			
			BlitzQ_USUARIO()
		}senao{
			Q_incorreto ++
		}
		
	}

	funcao Abilidade_W()
	{
		se(USUARIO_abilidade_W == "BlitzQ_USUARIO")
		{
			
			BlitzW_USARIO()
		}senao{
			W_incorreto ++
		}
	}

	funcao Abilidade_E()
	{
		se(USUARIO_abilidade_E == "BlitzQ_USUARIO")
		{
			
		}senao{
			E_incorreto ++
		}
	}

	funcao Abilidade_R()
	{
		se(USUARIO_abilidade_R == "BlitzQ_USUARIO")
		{
			
		}senao{
			R_incorreto ++
		}
	}

	//////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////

	funcao Abilidade_Q_CPU()
		{
			se(CPU_abilidade_Q == "BlitzQ_CPU")
			{
				
				BlitzQ_CPU()
			}senao{
				Q_incorreto ++
			}
			
		}
	
	funcao Abilidade_W_CPU()
	{
		se(CPU_abilidade_W == "BlitzQ_CPU")
		{
			
			BlitzW_CPU()
		}senao{
			W_incorreto ++
		}
	}

	funcao Abilidade_E_CPU()
	{
		se(CPU_abilidade_E == "BlitzQ_CPU")
		{
			
		}senao{
			E_incorreto ++
		}
	}

	funcao Abilidade_R_CPU()
	{
		se(USUARIO_abilidade_R == "BlitzQ_CPU")
		{
			
		}senao{
			R_incorreto ++
		}
	}

	//////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////
				//Abilidades do Blitz	

	funcao Blitz_ad_USUARIO()
	{
		critico = u.sorteia(1, 10)
		se(critico == 5)
		{
			ataque_real = USUARIO_ad * 2
			CPU_vida = CPU_vida - ataque_real
			passiva()
		}senao{
			CPU_vida = CPU_vida - USUARIO_ad
			passiva()
		}
		
	}
	funcao Blitz_ad_CPU()
	{
		critico = u.sorteia(1, 10)
		se(critico == 5)
		{
			ataque_real = CPU_ad * 2
			USUARIO_vida = USUARIO_vida - ataque_real
			passiva_CPU()
		}senao{
			USUARIO_vida = USUARIO_vida - CPU_ad
			passiva_CPU()
		}
	}

	funcao BlitzQ_USUARIO()
	{
		ataque_real = CPU_armmor_ap - USUARIO_ap
		critico = u.sorteia(1, 10)
		se(critico == 5)
		{
			ataque_real = ataque_real * 2
			CPU_vida = CPU_vida - ataque_real
			CPU_vida = CPU_vida - USUARIO_ap 
			passiva()
		}senao{
			CPU_vida = CPU_vida - ataque_real
			CPU_vida = CPU_vida - USUARIO_ap 
		passiva()
		}
		
		
	}
	funcao BlitzQ_CPU()
	{
		ataque_real = USUARIO_armmor_ap - CPU_ap
		critico = u.sorteia(1, 10)
		se(critico == 5)
		{
			ataque_real = ataque_real * 2
		}senao{
			USUARIO_vida = USUARIO_vida - ataque_real
			USUARIO_vida = USUARIO_vida - CPU_ap 
		passiva_CPU()
		}
		USUARIO_vida = USUARIO_vida - ataque_real
		USUARIO_vida = USUARIO_vida - CPU_ap 
		passiva_CPU()
		
	}

	funcao BlitzW_USARIO()
	{
		USUARIO_as = USUARIO_as + 0.10
		passiva()
	}
	funcao BlitzW_CPU()
	{
		CPU_as = CPU_as + 0.10
		passiva_CPU()
	}

	//////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////
                     //Passivas

      funcao passiva()
	 {
	 	escolha(CH_passiva_USUARIO)
	 	{
	 		caso 1: //Blitzcrank
		 			se(USUARIO_vida<= 500 e cooldown_passiva_blitz_USUARIO == 1)
		 			{
		 				USUARIO_vida = USUARIO_vida + 300
		 				cooldown_passiva_blitz_USUARIO = cooldown_passiva_blitz_USUARIO - 1 
		 				jogada_USUARIO ++
		 				Ordem_de_Ataque()
		 				
		 			}senao{
		 				jogada_USUARIO ++
		 				Ordem_de_Ataque()
		 			}
	 			
	 		pare
	 		caso 2: //Drave

	 				jogada_USUARIO ++
	 				Ordem_de_Ataque()
	 		
	 		pare
	 		caso 3:  //Lux
	 				USUARIO_ad = 2 * USUARIO_ad 
	 				jogada_USUARIO ++
	 				Ordem_de_Ataque()
	 				
	 		
	 		pare
	 		caso 4://Dr.Mundo
	 				USUARIO_vida = USUARIO_vida + 50
	 				jogada_USUARIO ++
	 				Ordem_de_Ataque()
	 		
	 		pare
	 		caso 5://Warwick
					USUARIO_vida = USUARIO_vida + 30
					CPU_vida = CPU_vida - 30
					jogada_USUARIO ++
					Ordem_de_Ataque()
	 		
	 		pare
	 		
	 	}

	 }
	 funcao passiva_CPU()
	 {
	 	escolha(CH_passiva_CPU)
	 	{
	 		caso 1://Blitzcrank
	 				se(CPU_vida<= 500 e cooldown_passiva_blitz_CPU == 1)
	 				{
		 				CPU_vida = CPU_vida + 300
		 				cooldown_passiva_blitz_CPU = cooldown_passiva_blitz_CPU - 1 
		 				jogada_CPU ++
		 				Ordem_de_Ataque()
		 			}senao{
		 				jogada_CPU ++
	 					Ordem_de_Ataque()
	 				}
	 		
	 		pare
	 		caso 2://Drave
	 				jogada_CPU ++
	 				Ordem_de_Ataque()
	 		
	 		pare
	 		caso 3://Lux
	 				CPU_ad = 2 * CPU_ad 
	 				jogada_CPU ++
	 				Ordem_de_Ataque()
	 		
	 		pare
	 		caso 4://Dr.Mundo
	 				CPU_vida = CPU_vida + 50
	 				jogada_CPU ++
	 				Ordem_de_Ataque()
	 		
	 		pare
	 		caso 5://Warwick
					CPU_vida = CPU_vida + 30
					USUARIO_vida = USUARIO_vida - 30
					jogada_CPU ++			 
					Ordem_de_Ataque()
	 		
	 		pare
	 	}
	 }

	
	//////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////
				//Selecao de abilidades ou Hit
	

	funcao Batalha()
	{
		enquanto(USUARIO_vida> 0 ou CPU_vida> 0)
		{
			
			limpa()
			escreva("________________________________")
			escreva("\nSua vida             (",CH_nome_USUARIO,") e de:",USUARIO_vida)
			escreva("\nVida do seu Oponente (",CH_nome_CPU,") e de:",CPU_vida)
			escreva("\n________________________________")
			escreva("\nA - Ataque basico")
			escreva("\nQ - ",USUARIO_nome_abilidade_Q)
			escreva("\nW - ",USUARIO_nome_abilidade_W)
			escreva("\nE - ",USUARIO_nome_abilidade_E)
			escreva("\nR - ",USUARIO_nome_abilidade_R)
			escreva("\n________________________________")
			escreva("\nEscolha a abildade:")
			leia(ABILIDADE)
			
			se(ABILIDADE == "Q")
			{
				jogada_USUARIO = 1
				jogada_CPU = 1
				se(USUARIO_as>=CPU_as)
				{
					Ordem_dos_Ataques = 1
				}senao{
					Ordem_dos_Ataques = 2
					
					
				}

				
				
					
				
				Ordem_de_Ataque()
				
			}senao{
				ABILIDADE_incorreta ++
			}
			se(ABILIDADE == "W")
			{
				Abilidade_W()
			}senao{
				ABILIDADE_incorreta ++
			}
			se(ABILIDADE == "E")
			{
				Abilidade_E()
			}senao{
				ABILIDADE_incorreta ++
			}
			se(ABILIDADE == "R")
			{
				Abilidade_R()
			}senao{
				ABILIDADE_incorreta ++
			}

		}
		se(USUARIO_vida<=0 ou CPU_vida<=0 )
		{
			se(USUARIO_vida<= 0)
			{
				
			}
		}
	}

	//////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////
				//Ordem de ATAQUE
				
	funcao Ordem_de_Ataque()
	{
		se(Ordem_dos_Ataques == 1 )
		{		
			enquanto(jogada_USUARIO == 1)
			{
				se(ABILIDADE == "Q")
				{
					
					Abilidade_Q()
				}
				se(ABILIDADE == "W")
				{
					Abilidade_W()
				}
				se(ABILIDADE == "E")
				{
					Abilidade_E()
				}
				se(ABILIDADE == "R")
				{
					Abilidade_R()
				}
			}
			enquanto(jogada_CPU == 1)
			{

				ABILIDADE_CPU = 1
				se(ABILIDADE_CPU == 1)
				{
					Abilidade_Q_CPU()
				}
				se(ABILIDADE_CPU == 2)
				{
					Abilidade_W_CPU()
				}
				se(ABILIDADE_CPU == 3)
				{
					Abilidade_E_CPU()
				}
				se(ABILIDADE_CPU == 4)
				{
					Abilidade_R_CPU()
				}
			}

		   Batalha()
		}senao{
			enquanto(jogada_CPU == 1)
			{
				ABILIDADE_CPU = u.sorteia(1, 1)
				se(ABILIDADE_CPU == 1)
				{
					Abilidade_Q_CPU()
				}
				se(ABILIDADE_CPU == 2)
				{
					Abilidade_W_CPU()
				}
				se(ABILIDADE_CPU == 3)
				{
					Abilidade_E_CPU()
				}
				se(ABILIDADE_CPU == 4)
				{
					Abilidade_R_CPU()
				}
			}
			enquanto(jogada_USUARIO == 1)
			{
				se(ABILIDADE == "Q")
				{
					Abilidade_Q()
				}
				se(ABILIDADE == "W")
				{
					Abilidade_W()
				}
				se(ABILIDADE == "E")
				{
					Abilidade_E()
				}
				se(ABILIDADE == "R")
				{
					Abilidade_R()
				}
			}

		   Batalha()
		}
	}

	//////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////



		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1574; 
 * @DOBRAMENTO-CODIGO = [431, 445, 495, 500];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {USUARIO_armmor_ap, 32, 10, 17};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */