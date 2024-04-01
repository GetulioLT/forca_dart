// Função para gerar uma lista de espaços com o mesmo número de caracteres que a palavra
List<String> gerarEspacos(String palavra) {
  List<String> listaEspacos = [];

  // Para cada caractere na palavra, adiciona um espaço à lista
  for (var _ in palavra.split("")) {
    listaEspacos.add("_");
  }
  return listaEspacos;
}

// Função para verificar se a letra está na palavra e atualizar a lista de espaços
List<String> ver(String letra, String palavra, List<String> listaEspacos) {
  int contador = 0;

  // Para cada letra na palavra
  for (var l in palavra.split("")) {
    // Se a letra é igual à letra atual na palavra, substitui o espaço correspondente pela letra
    if (letra.toLowerCase() == l.toLowerCase()) {
      listaEspacos[contador] = letra;
    }
    contador++;
  }

  return listaEspacos;
}

// Função para atualizar o desenho do boneco com base no número de erros
String forca(int numErros, String boneco) {
  boneco = " | \n O \n";

  // Dependendo do número de erros, adiciona partes ao boneco
  switch (numErros) {
    case 2:
      boneco += "/ \n";
      break;

    case 3:
      boneco += "/| \n";
      break;

    case 4:
      boneco += "/|\\ \n";
      break;

    case 5:
      boneco += "/|\\ \n /  \n";
      break;

    case 6:
      boneco += "/|\\ \n / \\ \n";
      break;
  }
  return boneco;
}