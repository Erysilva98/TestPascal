{ Programa: Sistema de acesso a atividades de l�gica de programa��o
  Data    : 04/05/2023
  Autor   : Ysterllane }

Program PMain ;
Var cod, pw, n1, n2, n3, n4, soma, s, nvs, pa, va, grat, impost, sb, d, txj, r, vl, kW : real;
    q11base, q11alt, q11area, nt1, nt2, nt3, nt4, ma, adicao, mp, p1, p2, p3, pi, h : real;
    num1, num2, t, opcao, opAtiv : integer;
    sexo :string;
    
Begin
  Gotoxy (20,12);
  Write ('Usu�rio: ');
  Readln(cod);
    
  if cod = 1234 then   // Se o c�digo do usuario for correto
	   Begin             // no desvio condicional, o bloco � iniciado/acessado e seguido.

       Gotoxy (20,13);
       Write ('Senha  : ');
	     Read  (pw);     // A senha ser� lida, porque se o codigo do usu�rio foi correto/verdadeiro: "cod = 1234" = true.
       
			 if pw = 9999 then   // Agora testa a senha, do mesmo modo que testado o codigo do usu�rio: "pw = 9999" = true ou false ?
					begin
             textcolor(1);        // cor para letras (0-15)
             textbackground(15);  // cor para o fundo (0-15)
             Gotoxy (20,15);
			       Write (' => Acesso Permitido! Tecle Algo para continuar.');  // Desvio condicional para resultado: TRUE
             Readkey;  { Aguarda at� uma tecla seja pressionada }	
             
             // No blocos a partir deste ponto ser�o construidos as rotinas de acesso 
             
             // Inicio do menu principal
             textbackground(0);  // cor para o fundo (0-15)
             ClrScr;
             TextColor(4);
             Gotoxy (30,12);
             Writeln('Lista de Atividades');
             TextColor(10);             
             Gotoxy (30,13);             
             Writeln('------------------------');
             TextColor(10);             
             Gotoxy (30,14);             
             Writeln('Lista de atividades - 1');             
             Gotoxy (30,15);             
             Writeln('Lista de atividades - 2');             
             TextColor(10);            
             Gotoxy (30,16);             
             Writeln('------------------------');             
             TextColor(7);                         
             Gotoxy (30,17);                          
             Write('Entre com a op��o: '); Readln (opcao);
             opcao := (opcao);
             // Fim do menu principal
             
             // Inicio do menu secund�rio, com a sele��o tipo: CASO
             Case opcao of 
 						      1: Begin    
                          ClrScr;
                          TextColor(10); 
					        				Writeln('================================================================================');
                          Writeln;
													TextColor(4);
                          Writeln(' Lista de atividades 1 ');
                          Writeln;
													TextColor(10); 
										      Writeln('================================================================================');
                          Writeln;
													TextColor(7);
													Writeln('1) Fa�a um algoritmo que receba quatro n�meros inteiros, calcule e mostre a soma desses n�meros.');
                          Writeln;
													Writeln('2Fa�a um algoritmo que receba tr�s notas, calcule e mostre a m�dia aritm�tica entre elas.');
                          Writeln;
													Writeln('3Fa�a um algoritmo que receba tr�s notas e seus respectivos pesos, calcule e mostre a m�dia ponderada.');
                          Writeln;
													Writeln('4) Algoritmo que receba o sal�rio de um funcion�rio, calcule e mostre o novo sal�rio, com um aumento de 25%');
                          Writeln;
													Writeln('5) Algoritmo que recebe sal�rio de um funcion�rio e o aumento, calcule e mostre o novo sal�rio.');
                          Writeln;
													Writeln('6) Algoritmo que receba o sal�rio de um funcion�rio, calcule o sal�rio, sabendo que tem + 5 por cento e paga imposto de 7%');
                          Writeln;
													Writeln('7Algoritmo que receba o sal�rio de um funcion�rio, calcule o sal�rio, sabendo que tem aumento de R$ 50 e imposto de 10%');
                          Writeln;
													Writeln('8Algoritmo que receba o valor de um dep�sito e o da taxa de juros, calcule e mostre o valor do rendimento e o valor depois do rendimento.'); 	
										      Writeln; TextColor(10);
													Writeln('================================================================================');
                          TextColor(4);
													Writeln;
													Write('Entre com a op��o: '); Readln (opAtiv);
                          opAtiv := (opAtiv);
                          end;
                       End;
                    Case opcao of     
 						      2: Begin
                          ClrScr;
                          TextColor(10); 
					        				Writeln('================================================================================');
                          TextColor(4); Writeln;
                          Writeln(' Lista de atividades 2');
                          TextColor(10); Writeln;
										      Writeln('================================================================================');
                          TextColor(7); Writeln;	
										      Writeln('1Algoritmo que descobre o < n�mero entre 3.'); 
													Writeln;
										      writeln('2) Receba 2 inteiros e ver qual � o >. Existe a possibilidade dos n�meros serem =.'); 
													Writeln;
										      writeln('3) Informe um inteiro e determine se � par ou �mpar.'); 
													Writeln;
										      writeln('4) Ler 2 inteiros M e N e determinar se M � divis�vel por N.'); 
													Writeln;
													writeln('5Receba: peso, H e o sexo, calcule e imprima o seu peso ideal.');  
													WRITELN('Dizendo se est� acima, abaixo ou no peso ideal. Utilize:');
													writeln('Homens: Peso ideal = 72,7 x h � 58, mulheres: Peso ideal = 62,1 x h � 44,7'); 
													Writeln;
													writeln('6) Diga tempo do servi�o e o sal�rio, calcular e exibir a grat que receber�.');
													Writeln;
                          writeln('7Ler notas das avalia��es, calc a m�dia e informar: aprovado ou n�o.');
                          Writeln;
                          writeln('8Receba 3 notas, calc e imprima a m�dia final e imprima: A, B, C, D ou E.');
                          Writeln;
                          writeln('9) Informe o n� de hrs extras e o n� de hrs q o funcion�rio faltou e calc seu pr�mio.');
                          Writeln;
                          writeln('10) Solicite o consumo do cliente em quilowatts e informe qual ser� o valor da conta.');
                          Writeln;
 										      writeln('11) Receba: ao c�digo do produto comprado; b) a quantidade comprada do produto. Calcule e exiba:');
                          writeln;
													writeln('O pre�o unit�rio do produto comprado de acordo com a tabela A;');
                          writeln('O valor total da compra;');
                          writeln('O desconto sobre o total da compra, segundo a tabela B;');
                          writeln('O valor final da compra depois de aplicado o desconto.');
                          Writeln;
													Writeln('================================================================================');
													Writeln; 
													TextColor(10);
 			                    Write('Entre com a op��o: '); Readln(opAtiv);
                          opAtiv :=(opAtiv);
											 End;
                        

              End;
              // Fim do menu secund�rio
              
             // Inicio das resolucoes das quest�es da atividade 1
             if opcao = 1 then
                Begin
                   Case opAtiv of 
 			      			      1: Begin    
                                ClrScr;
                                TextColor(10);
																Writeln(' 1 - Fa�a um programa que receba quatro n�meros inteiros, calcule e mostre a soma desses n�meros.'); 
																writeln;
			      		        				Writeln('==================================================================');
                                TextColor(4); writeln;
                                write('Digite um n�mero: '); readln(n1); writeln;
                                write('Digite um n�mero: '); readln(n2); writeln;
                                write('Digite um n�mero: '); readln(n3); writeln;
                                write('Digite um n�mero: '); readln(n4); writeln;
                                   soma := (n1 + n2 + n3 + n4);
																writeln('Sua soma �: ',soma:2:2); writeln;
                                TextColor(10); 
      										      Writeln('------------------------------------------------------------------'); writeln;
                                TextColor(7); 	
 										            Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey;
						                 End;
 			      			      2: Begin    
															  ClrScr;
                                TextColor(10);
																Writeln('2 - Fa�a um algoritmo que receba tr�s notas, calcule e mostre a m�dia aritm�tica entre elas.');  
																writeln;
			      		        				Writeln('==================================================================');  writeln;
                                TextColor(4);
                                write('Diga a nota 1: '); read(nt1); writeln;
	                              write('Diga a nota 2: '); read(nt2); writeln;
	                              write('Diga a nota 3: '); read(nt3); writeln;
                                   ma:= (nt1+nt2+nt3)/3;	 
                                writeln('Sua m�dia aritim�tica �: ', ma:2:2);  writeln;
                                   adicao := nt1 + nt2 + nt3 + nt4;
																writeln('Sua soma �: ', adicao:2:2); writeln;
                                TextColor(10); 
      										      Writeln('------------------------------------------------------------------'); writeln;
                                TextColor(7); 	
 										            Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey;
						                 End;
						            3: Begin
												        ClrScr;
                                TextColor(10);
																Writeln('3 - Fa�a um algoritmo que receba tr�s notas e seus respectivos pesos, calcule e mostre a m�dia ponderada.'); 
																writeln;
			      		        				Writeln('=================================================================='); writeln;
                                TextColor(4);    
															  write('Diga a nota 1: '); read(nt1); writeln;
	                                write('Diga o peso 1: '); read(p1); writeln;
	                              write('Diga a nota 2: '); read(nt2); writeln;
	                                write('Diga o peso 2: '); read(p2); writeln;
	                              write('Diga a nota 3: '); read(nt3); writeln;
	                                write('Diga o peso 3: '); read(p3); writeln;
	  
                                mp:= (nt1 * p1 + nt2 * p2 + nt3 * p3)/(p1+p2+p3);	 
                                write('Sua m�dia ponderada �: ', mp:2:2); writeln; writeln;
                                TextColor(10); 
      										      Writeln('------------------------------------------------------------------'); writeln;
                                TextColor(7); 
                                Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey;
						                 End;     
                        4: Begin    
															 ClrScr;
                                TextColor(10);
																Writeln('4 - Algoritmo que receba o sal�rio de um funcion�rio, calcule e mostre o novo sal�rio, com um aumento de 25%');
			      		        				writeln;
																Writeln('==================================================================');  writeln;
                                TextColor(4);
																write('Sal�rio: '); read(s); writeln;
                                   nvs:=(s*25)/100+s;
                                write('Novo sal�rio: ', nvs:2:2); writeln; writeln;
																TextColor(10); 
      										      Writeln('------------------------------------------------------------------'); writeln;
                                TextColor(7); 
                                Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey; 
						                 End;
						            5: Begin    
															  ClrScr;
                                TextColor(10);
																Writeln('5 - Algoritmo que recebe sal�rio de um funcion�rio e o aumento, calcule e mostre o novo sal�rio.'); 
																writeln;
			      		        				Writeln('=================================================================='); writeln;
                                TextColor(4);
                                write('Sal�rio: '); read(s); writeln;
                                write('Percentual de aumento: '); read(pa); writeln;
                                   nvs:=(s*pa)/100+s;
                                   va:=(s*pa)/100;
                                writeln('Novo sal�rio: ', nvs:2:2); writeln;
                                write('Valor do aumento: ', va:2:2); writeln; writeln;
																TextColor(10); 
      										      Writeln('------------------------------------------------------------------'); writeln;
                                TextColor(7); 
                                Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey; 
						                 End;
												6: Begin    
															  ClrScr;
                                TextColor(10);
																Writeln('6 - Algoritmo que receba o sal�rio de um funcion�rio, calcule o sal�rio, sabendo que tem + 5 por cento e paga imposto de 7%');
			      		        				writeln(' ');
																Writeln('=================================================================='); writeln;
                                TextColor(4);
                                write('Sal�rio: '); read(s); writeln;
                                   grat:= (s*5/100+s);
                                   impost:= grat-(grat*7/100);
                                writeln('Sal�rio a receber: ', impost:2:2 ); writeln;
																TextColor(10); 
      										      Writeln('------------------------------------------------------------------'); writeln;
                                TextColor(7); 
                                Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey; 
						                 End;
												7: Begin    
															  ClrScr;
                                TextColor(10);
																Writeln('7 - Algoritmo que receba o sal�rio de um funcion�rio, calcule o sal�rio, sabendo que tem aumento de R$ 50 e imposto de 10%');
			      		        				writeln;
																Writeln('=================================================================='); writeln;
                                TextColor(4);
                                write('Escreva seu sal�rio base: '); read(sb) ; writeln;
                                   impost:=(sb*10/100);
	                              write('Sal�rio a receber: ', sb-impost+50:2:2); writeln; writeln;
	                              TextColor(10); 
      										      Writeln('------------------------------------------------------------------'); writeln;
                                TextColor(7); 
                                Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey;
						                 End;
												8: Begin    
															  ClrScr;
                                TextColor(10);
																Writeln('8 - Algoritmo que receba o valor de um dep�sito e o da taxa de juros, calcule e mostre o valor do rendimento e o valor depois do rendimento.');
			      		        				writeln;
																Writeln('=================================================================='); writeln;
                                TextColor(4);
                                write('Digite o valor do dep�sito: '); read(d); writeln;
                                write('Digite o valor da taxa de juros: '); read(txj); writeln;
                                writeln('Rendimento: ', d*txj/100:2:2); writeln;
                                write('Valor total depois do rendimento: ', (d*txj/100)+d:2:2); writeln; writeln;
                                TextColor(10); 
      										      Writeln('------------------------------------------------------------------'); writeln;
                                TextColor(7); 
                                Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey;
						                 End; 		  		 		      
                   End;

                end
                // Fim das resolucoes das quest�es da atividade 1
              
					end;
					  //inicio das resolu��es da atividade 2
					if opcao = 2 then
                Begin
                   Case opAtiv of 
 			      			      1: Begin
 			      			              ClrScr;
                                TextColor(10);
																Writeln(' 1 - Escreva um algoritmo para descobrir o menor n�mero entre tr�s valores digitados.'); 
																writeln;
			      		        				Writeln('=====================================================================================');
                                TextColor(4); writeln;
                                write('Digite um n�mero: '); readln(n1); writeln;
                                write('Digite um n�mero: '); readln(n2); writeln;
                                write('Digite um n�mero: '); readln(n3); writeln;
                                   if (n1 <= n2) and (n1 <= n3then
                                      begin
                                        write('O menor n�mero �: ', n1:2:2); 
                                      end;
                                   if (n2 <= n1) and (n2 <= n3then
																	    begin
																	      write('O menor n�mero �: ', n2:2:2);
																			end; 
																	 if (n3 <= n2) and (n3 <= n1then
																	    begin
																	      write('O menor n�mero �: ', n3:2:2);
																			end;		  
                                TextColor(10);
																writeln; writeln; 
      										      Writeln('----------------------------------------------------------------------------------'); writeln;
                                TextColor(7);
																writeln; 	
 										            Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey;
 			      			           end;
												2: Begin    
															  ClrScr;
                                TextColor(10);
																Writeln('2 - Ler 2 inteiros quaisquer e decidir qual deles � o maior. Existe a possibilidade de serem iguais.');  
																writeln;
			      		        				Writeln('====================================================================================================');  writeln(' ');
                                TextColor(4);
                                write('Digite um inteiro: '); readln(n1); writeln;
                                write('Digite um inteiro: '); readln(n2); writeln;
                                   if (n1 >= n2) then
                                      begin
                                        write('O maior n�mero �: ', n1:2:2); 
                                      end;
                                   if (n2 >= n1then
																	    begin
																	      write('O maior n�mero �: ', n2:2:2);
																			end;
																TextColor(10);
																writeln; 
      										      Writeln('----------------------------------------------------------------------------------'); writeln;
                                TextColor(7);
																writeln; 	
 										            Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey;			 
														 end;
												3: Begin
												        ClrScr;
                                TextColor(10);
																Writeln('3 - Ler um n�mero inteiro e determinar se ele � par ou �mpar. O resto da divis�o de um n�mero par por 2 � zero; se o n�mero for impar, o resto � 1.'); 
																writeln;
			      		        				Writeln('=========================================================================================================='); writeln(' ');
                                TextColor(4);
                                write('Digite um inteiro: '); readln(num1); writeln;
                                   if (num1 mod 2 = 0) then 
                                      begin
                                        write('O n�mero � par.'); 
                                      end
                                  else
																	    begin
																	      write('O n�mero � impar.');
																			end;
																TextColor(10);
																writeln; 
      										      Writeln('----------------------------------------------------------------------------------'); writeln;
                                TextColor(7);
																writeln; 	
 										            Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey;			
														 end;
												4: Begin    
															 ClrScr;
                                TextColor(10);
																Writeln('4)
																 Ler 2 inteiros M e N e determinar se M � divis�vel por N. Se o resto da divis�o de M por N � 0 (zero), ent�o M � divis�vel por N.');
			      		        				writeln;
																Writeln('=================================================================='); writeln;
                                TextColor(4);
                                write('Digite um inteiro: '); readln(num1); writeln;
                                write('Digite um inteiro: '); readln(num2); writeln;
                                   if (num1 mod num2 = 0) then 
                                      write('O n�mero ', num1, ' � divis�vel pelo n�mero ', num2)
                                   else
																	    write('O n�mero ', num1, ' n�o � divis�vel pelo n�mero ', num2);
																TextColor(10); 
														    writeln;
      										      Writeln('------------------------------------------------------------------'); writeln;
                                TextColor(7); 
                                Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey; 
						                 End;
												5: Begin    
															  ClrScr;
                                TextColor(10);
																Writeln('5 � Receba peso, h e sexo de uma pessoa, calc e imprima seu peso ideal, informando se est� abaixo ou acima do mesmo.');
                                Writeln('Homens: Peso ideal = 72,7 x Altura - 58;'); 
																writeln('Mulheres: Peso ideal = 62,1 x Altura - 44,7 '); 
																writeln;
			      		        				Writeln('=================================================================='); writeln;
                                TextColor(4);									 					 
 			      			              write('Diga seu peso: '); readln(p1); writeln;
																write('Diga sua altura: '); readln(h); writeln;
																write('Voc� � homem ou mulher? '); readln(sexo); writeln;
																   if (sexo = 'homem'then
																      Begin
																       pi := (72.7 * h) - 58;  
																         if (p1 = pithen 
																				     write('Seu peso: ', p1, ' coincide com o peso ideal')
																				 else if (p1 > pithen 
																				     write('Seu peso est� acima do peso ideal: ', pi:2:2)
																				 else if (p1 < pi) then 
																				     write('Seu peso est� abaixo do peso ideal: ', pi:2:2); 
																			End;
																    if (sexo = 'mulher'then
																		   Begin
																		      pi := 62.1 * h ) - 44.7 ;
																		        if (p1 = pithen
																		           write('Seu peso: ', p1, ' coincide com o peso ideal')
																            else if (p1 > pithen
																               write('Seu peso est� acima do peso ideal: ', pi:2:2)
																            else if (p1 < pi) then
																				       write('Seu peso est� abaixo do peso ideal: ', pi:2:2)
																			 End;  
 			      			              TextColor(10); 
														    writeln; writeln;
      										      Writeln('------------------------------------------------------------------'); writeln;
                                TextColor(7); 
                                Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey;
 			      	                end;
 			      	           6: Begin    
															  ClrScr;
                                TextColor(10);
																Writeln('6A XYZ Ltda deu + 20% do valor do sal�rio aos funcion�rios com tempo => 10 anos e de 10% aos demais.');
																Writeln('Solicite o tempo e o sal�rio do funcion�rio e exibiba o valor da gratifica��o que ele ir� receber.');
			      		        				writeln;
																Writeln('==================================================================');  writeln;
                                TextColor(4);
                                write('Ol� funcion�rio, por quanto tempo, em anos, vc tem trabalhado na empresa? ');
                                read(t); writeln;
                                write('Qual seu sal�rio atual? ');
                                read(s); writeln;
                                  if t < 10 then
                                    write('Sua gratifica��o � de: ', (s*0.1):2:2, ' R$')
                                  else
																	  write('Sua gratifica��o � de: ', (s*0.2):2:2, ' R$');  
                                TextColor(10); 
														    writeln; writeln;
      										      Writeln('------------------------------------------------------------------'); writeln(' ');
																TextColor(7); 
                                Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey;
 			      	               end;
												7: Begin    
															  ClrScr;
                                TextColor(10);
																Writeln('7Leia as notas das duas avalia��es parciais e mostre a situa��o do aluno:');
																writeln('aprovado ou n.');
																writeln('   Se m�dia => 7, aprovado ');
																writeln('   Se m�dia => 3, final ');
																writeln('   Se m�dia < 3, reprovado ');
																writeln;
																Writeln('==================================================================');  writeln(' ');
                                TextColor(4); 
																write('Qual sua nota na avalia��o 1? ');
																   readln(nt1); writeln;
																write('Qual sua nota na avalia��o 2? ');
																   readln(nt2); writeln;
																ma:= (nt1+nt2)/2;
																  if (ma >= 7and (ma > 3)  then  
 			      	                       writeln('O aluno obteve m�dia ', ma:2:2, ' e est� aprovado.');
 			      	                    if (ma >= 3and (ma <= 6.99) then  
 			      	                       writeln('O aluno obteve m�dia ', ma:2:2, ' e precisa realizar a prova final.');
 			      	                    if ma < 3 then
 			      	                       writeln('O aluno obteve m�dia ', ma:2:2, ' e est� reprovado.');
																TextColor(10); 
														    writeln; 
      										      Writeln('------------------------------------------------------------------'); writeln;
                                TextColor(7); 
                                Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey;
 			      	               end;
												8: Begin    
															  ClrScr;
                                TextColor(10);
																Writeln('8) Recebeba 3 notas do estudante e imprima a m�dia ponderada e atribua: A, B, C, D ou E');
			      		        				writeln;
																Writeln('==================================================================');  writeln;
                                TextColor(4);    
 			      	                  write('Qual sua nota no trabalho de laborat�rio?  ');
																   readln(nt1); writeln;
																write('Qual sua nota na avalia��o semestral? ');
																   readln(nt2); writeln;
																write('Qual sua nota no exame final? ');
																   readln(nt3); writeln;
																mp:= ( nt1*2 + nt2*3 + nt3*5)/(2+3+5);
																   write('Sua m�dia final �: ', mp:2:2);
																   WRITELN; WRITELN;
																if (mp >= 7) and (mp <= 8)then
																    write('Voc� obteve o conceito B');
																if (mp >= 8) and (mp <= 10)then
																    write('Voc� obteve o conceito A');
																if (mp >= 6and (mp <= 7)then
																    write('Voc� obteve o conceito C');
																if (mp >= 5and (mp <= 6)then
																    write('Voc� obteve o conceito D');
																if (mp < 5)then
																    write('Voc� obteve o conceito E');									    
 			      	                  TextColor(10); 
														    writeln; writeln;  
      										      Writeln('------------------------------------------------------------------'); writeln;
                                TextColor(7); 
                                Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey;
 			      	               end;		 
												9: Begin    
															  ClrScr;
                                TextColor(10);
																Writeln('9Informe o n� de hrs extras e o n� de hrs q o funcion�rio faltou e calc seu pr�mio.');
			      		        				writeln;
																Writeln('==================================================================');  writeln;
                                TextColor(4);
																write('Qual seu n�mero de horas extras na empresa Bons Amigos? ');
																   readln(n1); writeln;
																write('Quantas horas voc� faltou na empresa Bons Amigos? ');
																   readln(n2); clrscr; writeln;
																TextColor(10);
																Writeln('9) Informe o n� de hrs extras e o n� de hrs q o funcion�rio faltou e calc seu pr�mio.');
			      		        				writeln;
																Writeln('==================================================================');  writeln;
                                TextColor(4);      
 			      	                  write('O funcion�rio fez o total de ', n1:2:2, ' horas extras.');
 			      	                     writeln;
                                write('O funcion�rio faltou o total de ', n2:2:2, ' horas.');
                                   writeln; 
                                grat :=(0.667 - n2) + (n1);   
                                   write ('O funcion�rio receber� ');
                                      if (n1 > 40) then
                                          writeln ('R$ 200 de pr�mio')
                                      else if (n1 >= 30and (n1 < 40then
                                          writeln ('R$ 175 de pr�mio.')
                                      else if (n1 >= 20and (n1 < 30then
                                          writeln ('R$ 150 de pr�mio.')
                                      else if (n1 >= 10and (n1 < 20then
                                          writeln ('R$ 125 de pr�mio.')
                                      else if (n1 < 10) then
                                          writeln ('R$ 100 de pr�mio.');
                                writeln ('O funcion�rio receber� R$ ', grat:2:2,' de gratifica��o de Natal.');
 			      	                  TextColor(10); 
														    writeln;  writeln;  
      										      Writeln('------------------------------------------------------------------'); writeln;
                                TextColor(7); 
                                Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey;
 			      	               end;	
								        10 : Begin
															  ClrScr;
                                TextColor(10);
																Writeln('10Solicite o consumo do cliente em quilowatts e informe qual ser� o valor da conta de energia.');
			      		        				writeln;
																Writeln('==================================================================');  writeln;
                                TextColor(4);     
 			      	                  write('Qual seu consumo em quilowatts? ');
 			      	                     readln(kW); writeln;
																if kW < 10 then
 			      	                     write('Voc� ira pagar 10 reais da conta de energia e R$:3,50 da taxa de ilumina��o.');
 			      	                  if kW >= 10 then
 			      	                     write('Voc� ira pagar: ', (10+kW*1.4):2:2, ' e R$:3,50 da taxa de ilumina��o.');   
 			      	                  TextColor(10); 
														    writeln;  writeln;  
      										      Writeln('------------------------------------------------------------------'); 
																writeln;
                                TextColor(7); 
                                Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey;
 			      	               end;
												11 : Begin
															  ClrScr;
                                TextColor(10);
																writeln('11Receba: a) o c�digo do produto comprado; ba quantidade comprada do produto. Calcule e exiba:');
                                writeln;
													      writeln('O pre�o unit�rio do produto comprado de acordo com a tabela A;');
                                writeln('O valor total da compra;');
                                writeln('O desconto sobre o total da compra, segundo a tabela B;');
                                writeln('O valor final da compra depois de aplicado o desconto.');
                                writeln;
																Writeln('==================================================================');  writeln;
                                TextColor(4);			
																write('Qual o c�digo do produto comprado? (1 at� 40');
																  read(n1); writeln;
																write('Qual a quantidade comprada do produto? ');
																  read(n2); writeln;
																  
																if (n1 >= 1) and (n1 <= 10then
																    begin
																  write('O pre�o unit�rio do produto � R$:18,50.'); writeln;
																    n3 := n2*18.5;
																  write('O valor total da compra � R$ ', n3:2:2); writeln;
																    end
																    
																else if(n1 >= 11and (n1 <= 20) then
																    begin
																  write('O pre�o unit�rio do produto � R$:32,25.'); writeln;
																    n3 := n2*32.25;
																  write('O valor total da compra � R$: ', n3:2:2); writeln
																    end
																    
																else if (n1 >= 21) and (n1 <= 30then
																    begin
																  write('O pre�o unit�rio do produto � R$:44,10.'); writeln;
																    n3 := n2*44.1;
																  write('O valor total da compra � R$: ', n3:2:2); writeln
																    end
																    
																else if (n1 >= 31) and (n1 <= 40then  
																    begin
																  write('O pre�o unit�rio do produto � R$:57,78.'); writeln;
																    n3 := n2*57.78;
																  write('O valor total da compra � R$: ', n3:2:2); writeln;
																    end;
																    
																if n3 < 1500 then
																    begin
																  write('O valor do desconto aplicado sobre o valor total da compra � de 2,5%'); writeln;
																    n4:=n3*0.025;
																    va:= n3 - n4;
																	write('O valor final da compra depois de aplicado o desconto � de R$: ', va:2:2 )
																    end
																    
																else if (n3 > 1500) and (n3 < 3000) then
																    begin
																  write('O valor do desconto aplicado sobre o valor total da compra � de 5%'); writeln;
																    n4 := n3*0.05;
																    va := n3 - n4;
																  write('O valor final da compra depois de aplicado o desconto � de R$: ', va:2:2)
																    end
																    
																else if (n3 > 3000then
																    begin
																  write('O valor do desconto aplicado sobre o valor total da compra � de 10%'); writeln;
																  n4 := n3*0.1;
																  va := n3 - n4;
																	write('O valor final da compra depois de aplicado o desconto � de R$: ', va:2:2);
																    end;
																    
																writeln;  writeln;  
      										      Writeln('------------------------------------------------------------------'); 
																writeln;
                                TextColor(7); 
                                Writeln('Atividade concluida! Tecle algo para continuar.');
 										            Readkey;
 			      	               end     
       else 
					begin
             textcolor(12);
             textbackground(4);
             Gotoxy (20,15);
             Write (' <= Acesso Negado! Tecle Algo para continuar.');    // Desvio condicional Para resultado: FALSE
             Readkey;  { Aguarda at� uma tecla seja pressionada }	             
          end;  
         end;
         end
  else
     
		 begin
        Gotoxy (20,14);
        Writeln ('Usu�rio Inv�lido, Acesso Negado! Tecle Algo para continuar.');  // Desvio condicional Para resultado: FALSE do teste do c�digo do usu�rio  
        Readkey;  { Aguarda at� uma tecla seja pressionada }	             
     end;
			end;																
End.
