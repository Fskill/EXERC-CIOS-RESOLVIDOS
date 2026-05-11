Algoritmo "Encontrar_Posicao"
Var
   lista_base: vetor [1..5] de inteiro
   valor_entrada, contador, indice_insercao: inteiro
Inicio
   // Inicializar o vetor com uma sequencia ordenada crescente
   lista_base[1] <- 10
   lista_base[2] <- 20
   lista_base[3] <- 30
   lista_base[4] <- 40
   lista_base[5] <- 50

   escreva("Informe o numero a ser inserido: ")
   leia(valor_entrada)

   indice_insercao <- 6 // Por defeito assume que e o maior (vai para o fim)

   // Percorre a lista procurando onde o valor se encaixa
   para contador de 1 ate 5 faca
      se (valor_entrada <= lista_base[contador]) entao
         indice_insercao <- contador
         interrompa // Posicao encontrada, nao precisa continuar
      fimse
   fimpara

   escreval("O numero ", valor_entrada, " deve ser inserido na posicao:", indice_insercao)
Fimalgoritmo
