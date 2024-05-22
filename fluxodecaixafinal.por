programa {
  real valores [100]
  cadeia descricao [100]
  cadeia data [100]
  cadeia hora [100]
  inteiro contador = 0
  inteiro opcaosair
  funcao inicio () {
      faca {
        limpa()
        inteiro opcao
        escreva ("Olá! Bem-vindo ao sistema de gerenciamento fluxo de caixa virtual! \nQual ação deseja realizar hoje: \n0: Sair\n1: Adicionar receita\n2: Adicionar despesa\n3: Listar fluxo de caixa\n4: Listar saldo atual\n")
        leia (opcao)

        escolha (opcao) {

          caso 1: // COMPUTAR ENTRADAS
            faca {
              adicionarReceita ()
              escreva ("Deseja computar novos valores ou sair?\n0: Sair\n1: Computar novos valores\n")
              leia (opcaosair)
            } enquanto (opcaosair!=0)
          pare

          caso 2: // COMPUTAR SAÍDAS    
            faca {
              adicionarDespesa ()
              escreva ("Deseja computar novos valores ou sair?\n0: Sair\n1: Computar novos valores\n")
              leia (opcaosair)
            } enquanto (opcaosair!=0)
          pare

          caso 3: // Listar fluxo de caixa 
            faca {
              listarCaixa()
              escreva ("Deseja continuar ou sair?\n0: Sair\n1: Continuar\n")
              leia (opcaosair)
            } enquanto (opcaosair!=0)
          pare

          caso 4: // APRESENTA O BALANÇO DAS TRANSAÇÕES 
            faca {
              balancoGeral ()
              escreva ("Deseja continuar ou sair?\n0: Sair\n1: Continuar\n")
              leia (opcaosair)
            } enquanto (opcaosair!=0)
          pare
        }      
      } enquanto (opcao!=0)
      escreva ("Muito obrigado! Tenha um bom dia!")     
  }
  funcao adicionarReceita () {
    escreva ("Qual o valor da entrada? \n")
    leia (valores [contador])
    se (valores[contador]<0) {
      escreva ("Valor inválido (número negativo). Tente novamente!")
    } senao {
        escreva ("Descrição: \n")
        leia (descricao [contador])
        escreva ("Data: \n")
        leia (data [contador])
        escreva ("Hora: \n")
        leia (hora [contador])
        contador++
      }
  }
  funcao adicionarDespesa () {
    escreva ("Qual o valor da saída? \n")
    leia (valores [contador])
    se (valores[contador]>0) {
      valores [contador] = valores [contador]*-1
      escreva ("Descrição: \n")
      leia (descricao [contador])
      escreva ("Data: \n")
      leia (data [contador])
      escreva ("Hora: \n")
      leia (hora [contador])
      contador++ 
    } senao {
        escreva ("Descrição: \n")
        leia (descricao [contador])
        escreva ("Data: \n")
        leia (data [contador])
        escreva ("Hora: \n")
        leia (hora [contador])
        contador++
      }
  }
  funcao listarCaixa () {
    se (contador==0) {                   
      escreva ("Sem entradas ou saídas hoje!\n")
    } senao {
        escreva ("Transações: \n")
        para (inteiro i = 0; i < contador; i++) {
          se (valores [i]>0) {
            escreva (i+1, "ª transação - Entrada: ", valores [i], " reais \n", "Descrição: ", descricao [i], "\nData: ", data [i], "\nHora: ", hora [i], "\n")
          }  senao {
              escreva (i+1, "ª transação - Saída: ", valores [i], " reais \n", "Descrição: ", descricao [i], "\nData: ", data [i], "\nHora: ", hora [i], "\n")
            }
        }
      }
  }
  funcao balancoGeral () {
    se (contador==0) {
      escreva ("Não há nenhuma transação! Adicione entradas ou saídas para calcular o balanço!")
    } senao {
        real soma = 0
        para (inteiro i = 0; i < contador; i++) {
          soma += valores [i]
        }
        escreva ("O saldo final depois de todas as transações é: ", soma, " reais\n")
      }
  }
}