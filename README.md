# Jogo da Forca em Dart

Este é um simples jogo da forca implementado em Dart. O jogo escolhe uma palavra aleatória de uma lista predefinida e o jogador deve adivinhar a palavra letra por letra.

## Estrutura do Projeto

O projeto é organizado da seguinte maneira:

- `bin/`: Contém o ponto de entrada do aplicativo, `main.dart`. Este é o arquivo que você executa para iniciar o jogo.
- `lib/`: Contém o código da biblioteca do jogo, `forca.dart`. Este arquivo define as funções que implementam a lógica do jogo.
- `test/`: Contém os testes unitários para o código da biblioteca.

## Como Jogar

Para jogar o jogo, você precisa ter o Dart SDK instalado em seu computador. Depois de instalar o Dart SDK, você pode iniciar o jogo executando o seguinte comando no terminal:

```bash
dart run bin/main.dart
```

O jogo irá imprimir o estado atual do jogo e pedir que você digite uma letra. Se a letra estiver na palavra, o jogo irá revelar todas as ocorrências dessa letra na palavra. Se a letra não estiver na palavra, o jogo irá incrementar o número de erros e desenhar uma parte do boneco da forca. O jogo termina quando você adivinha a palavra completa ou quando o boneco da forca é totalmente desenhado.

## Testes

O projeto inclui alguns testes unitários para o código da biblioteca. Você pode executar os testes usando o seguinte comando:

```bash
dart test
```

## Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para abrir uma issue ou pull request se encontrar um bug ou quiser adicionar uma nova funcionalidade.