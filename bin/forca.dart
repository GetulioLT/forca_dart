import 'dart:io'; // Importa a biblioteca de I/O do Dart para ler a entrada do usuário
import 'dart:math'; // Importa a biblioteca de matemática do Dart para gerar números aleatórios
import 'package:forca/forca.dart'; // Importa o pacote forca

void main() {
  // Lista de palavras que podem ser escolhidas para o jogo
  final List<String> palavras = [
    'Abacaxi',
    'Emancipar',
    'Relógio',
    'Formiga',
    'Dificultar',
    'Horizonte',
    'Espontâneo',
    'Cachoeira',
    'Sincero',
    'Desafiador',
  ];

  // Escolhe uma palavra aleatória da lista e a converte para minúsculas
  final String palavraSort =
      palavras[Random().nextInt(palavras.length)].toLowerCase();

  // Gera uma lista de espaços para representar a palavra escolhida
  List<String> listaEspacos = gerarEspacos(palavraSort);

  // Lista para armazenar as letras que o usuário já usou
  List<String> letrasUsadas = [];

  // String para representar o desenho do boneco
  String desenhoBoneco = " | \n";

  // Contador para o número de erros do usuário
  int qntErros = 0;

  // Loop principal do jogo
  while (qntErros <= 6) {
    // Imprime o estado atual do jogo
    print("$desenhoBoneco \n"
        "letras usadas: \n $letrasUsadas \n"
        "Palavras: $listaEspacos");

    // Pede ao usuário para digitar uma letra
    print("Digite uma letra: ");
    String? letra = stdin.readLineSync();

    // Se a letra for null, pula para a próxima iteração do loop
    if (letra == null) continue;

    // Se a palavra contém a letra, atualiza a lista de espaços
    if (palavraSort.contains(letra)) {
      listaEspacos = ver(letra, palavraSort, listaEspacos);
    } else {
      // Se a palavra não contém a letra, incrementa o número de erros
      qntErros++;
      
      // Atualiza o desenho do boneco
      desenhoBoneco = forca(qntErros, desenhoBoneco);

      // Se o usuário cometeu 6 erros, imprime "Você perdeu"
      qntErros == 6 ? print("Você perdeu") : "";
    }

    // Se a palavra é igual à junção da lista de espaços, o usuário venceu
    if (palavraSort == listaEspacos.join()) { print("Você venceu"); break; }
    
    // Adiciona a letra à lista de letras usadas
    letrasUsadas.add(letra);

    // Limpa a tela
    print("\n" * 30);
  }
}