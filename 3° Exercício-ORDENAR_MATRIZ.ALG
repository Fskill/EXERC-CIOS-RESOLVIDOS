Algoritmo "Organizar_Linhas_Matriz"
Var
   tabela: vetor [1..5, 1..5] de inteiro
   linha, coluna, comp, temp: inteiro
Inicio
   // Preencher a tabela com numeros gerados aleatoriamente
   para linha de 1 ate 5 faca
      para coluna de 1 ate 5 faca
         tabela[linha,coluna] <- randi(100)
      fimpara
   fimpara

   // Ordenar cada linha da tabela de forma independente
   // Usa selecao direta: compara cada elemento com os seguintes
   // e troca se encontrar um menor
   para linha de 1 ate 5 faca
      para coluna de 1 ate 4 faca
         para comp de coluna+1 ate 5 faca
            se (tabela[linha,coluna] > tabela[linha,comp]) entao
               temp <- tabela[linha,coluna]
               tabela[linha,coluna] <- tabela[linha,comp]
               tabela[linha,comp] <- temp
            fimse
         fimpara
      fimpara
   fimpara

   // Imprimir a tabela com as linhas ja ordenadas
   escreval("Tabela com Linhas Ordenadas:")
   para linha de 1 ate 5 faca
      para coluna de 1 ate 5 faca
         escreva(tabela[linha,coluna]:4)
      fimpara
      escreval("")
   fimpara
Fimalgoritmo
