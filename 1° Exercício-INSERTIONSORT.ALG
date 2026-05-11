algoritmo "OrdenacaoPorInsercao"
var
   numeros       : vetor[1..10] de inteiro  // sequencia de valores a ordenar
   pos, idx      : inteiro                  // indices de controle dos ciclos
   elemento      : inteiro                  // valor atual a ser posicionado
   trocas        : inteiro                  // contador de movimentacoes feitas
   total         : inteiro                  // quantidade de elementos no vetor
inicio
   // Definir o tamanho e solicitar os dados ao utilizador
   total := 10
   escreval("=== Ordenacao por Insercao ===")
   escreval("Introduza 10 valores inteiros:")
   escreval("")
   para pos := 1 ate total faca
      escreva("Valor ", pos, ": ")
      leia(numeros[pos])
   fimpara

   // Apresentar a sequencia antes da ordenacao
   escreval("")
   escreval("Sequencia ORIGINAL:")
   escreva("[ ")
   para pos := 1 ate total faca
      escreva(numeros[pos], " ")
   fimpara
   escreval("]")

   // Processo de ordenacao por insercao
   // Percorre o vetor da esquerda para a direita.
   // Cada elemento e comparado com os anteriores
   // e inserido na posicao correta da parte ja ordenada.
   trocas := 0
   para pos := 2 ate total faca
      elemento := numeros[pos]        // guarda o valor a inserir
      idx := pos - 1                  // começa a comparar com o anterior

      // desloca elementos maiores uma posicao para a frente
      enquanto (idx >= 1) e (numeros[idx] > elemento) faca
         numeros[idx + 1] := numeros[idx]   // abre espaco para o elemento
         trocas := trocas + 1               // regista o deslocamento
         idx := idx - 1                     // avança para a esquerda
      fimenquanto

      numeros[idx + 1] := elemento    // insere o elemento na posicao certa
   fimpara

   // Exibir a sequencia apos a ordenacao
   escreval("")
   escreval("Sequencia ORDENADA:")
   escreva("[ ")
   para pos := 1 ate total faca
      escreva(numeros[pos], " ")
   fimpara
   escreval("]")
   escreval("")
   escreval("Movimentacoes realizadas: ", trocas)
fimalgoritmo
