programa {
    inteiro entradas [100]   
    inteiro receita [100]
    inteiro prejuizo [100]
    inteiro lucro [100]
    inteiro saidas [100]
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
                leia (entradas)
                
                escreva ("Deseja computar novos valores ou sair?\n0: Sair\n1: Continuar\n")
                leia (opcaosair)

              } enquanto (opcaosair!=0)
              pare

            caso 2: 
              inteiro opcaosair    
              faca {
                lucro = lucro (receita, prejuizo)

                escreva ("O lucro/preju�zo de hoje: ", lucro, " reais\n")

                escreva ("Deseja revisar os valores ou sair?\n0: Sair\n1: Revisar valores\n")
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

        funcao inteiro lucro (inteiro x, inteiro y) {

            inteiro lucro = x - y
            retorne lucro

        }
}