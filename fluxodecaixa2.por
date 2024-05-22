programa {
    real valores [100]
    cadeia descricao [100]
    cadeia data [100]
    cadeia hora [100]
    inteiro contador = 0

    funcao inicio () {
        faca {
          inteiro opcao
          escreva ("Ol�! Bem-vindo ao sistema de gerenciamento fluxo de caixa virtual! \nQual a��o deseja realizar hoje: \n0: Sair\n1: Adicionar receita\n2: Adicionar despesa\n3: Listar fluxo de caixa\n4: Listar saldo atual\n")
          leia (opcao)

          escolha (opcao) {

            caso 1: // COMPUTAR ENTRADAS
              faca {
                inteiro opcaosair
                escreva ("Qual o valor da entrada? \n")
                leia (valores [contador])
                se (valores[contador]<0) {
                  escreva ("Valor inv�lido (n�mero negativo). Tente novamente!")
                } senao {
                    escreva ("Descri��o: \n")
                    leia (descricao [contador])
                    escreva ("Data: \n")
                    leia (data [contador])
                    escreva ("Hora: \n")
                    leia (hora [contador])
                    contador++
                  }
                escreva ("Deseja computar novos valores ou sair?\n0: Sair\n1: Computar novos valores\n")
                leia (opcaosair)
              } enquanto (opcaosair!=0)
              pare

            caso 2: // COMPUTAR SA�DAS
              inteiro opcaosair    
              faca {
                escreva ("Qual o valor da sa�da? \n")
                leia (valores [contador])
                se (valores[contador]>0) {
                  escreva ("Valor inv�lido (n�mero positivo). Tente novamente!")
                } senao {
                    escreva ("Descri��o: \n")
                    leia (descricao [contador])
                    escreva ("Data: \n")
                    leia (data [contador])
                    escreva ("Hora: \n")
                    leia (hora [contador])
                    contador++
                  }

                escreva ("Deseja computar novos valores ou sair?\n0: Sair\n1: Computar novos valores\n")
                leia (opcaosair)
              } enquanto (opcaosair!=0)
              pare

              caso 3: // Listar fluxo de caixa
                inteiro opcaosair 
                faca {
                  se (contador==0) {                   
                    escreva ("Sem entradas ou sa�das hoje!\n")
                  } senao {
                      escreva ("Entradas: \n")
                      para (inteiro i = 0; i < contador; i++) {
                        se (valores [i]>0) {
                            escreva (i+1, "� transa��o - Entrada: ", valores [i], " reais \n", "Descri��o: ", descricao [i], "\nData: ", data [i], "\nHora: ", hora [i], "\n")
                        } senao {
                          escreva (i+1, "� transa��o - Sa�da: ", valores [i], " reais \n", " Descri��o: ", descricao [i], "\nData: ", data [i], "\nHora: ", hora [i], "\n")
                        }
                      }
                  }
                escreva ("Deseja continuar ou sair?\n0: Sair\n1: Continuar\n")
                leia (opcaosair)
                } enquanto (opcaosair!=0)
                pare

              caso 4: // APRESENTA O BALAN�O DAS TRANSA��ES
                inteiro opcaosair 
                real soma = 0
                faca {
                  para (inteiro i = 0; i < contador; i++) {
                    soma += valores [i]
                  }
                  escreva ("O saldo final depois de todas as transa��es �: ", soma, "\n")

                  escreva ("Deseja continuar ou sair?\n0: Sair\n1: Continuar\n")
                  leia (opcaosair)
                } enquanto (opcaosair!=0)
              pare

              caso contrario:
                escreva ("Opera��o inv�lida. Verifique opera��es dispon�veis e tente novamente.\n")
              pare
          }
            
        } enquanto (opcao!=0)
        escreva ("Muito obrigado! Tenha um bom dia!")
        
    }

        funcao adicionarReceita () {
            real valores [100]
    cadeia descricao [100]
    cadeia data [100]
    cadeia hora [100]
    inteiro contador = 0
            inteiro lucro = x - y
            retorne lucro

        }
}