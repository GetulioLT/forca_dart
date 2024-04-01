import 'package:test/test.dart'; // Importa o pacote de teste do Dart
import 'package:forca/forca.dart'; // Importa o pacote forca

void main() {
  // Agrupa os testes relacionados
  group('Forca', () {
    // Teste para a função gerarEspacos
    test('gerarEspacos', () {
      // Verifica se a função gerarEspacos retorna a lista de espaços correta para a palavra 'abacaxi'
      expect(gerarEspacos('abacaxi'), ['_', '_', '_', '_', '_', '_', '_']);
    });

    // Teste para a função ver
    test('ver', () {
      // Verifica se a função ver retorna a lista de espaços correta após a letra 'a' ser escolhida
      expect(ver('a', 'abacaxi', ['_', '_', '_', '_', '_', '_', '_']), ['a', '_', 'a', '_', 'a', '_', '_']);
    });

    // Teste para a função forca
    test('forca', () {
      // Verifica se a função forca retorna o desenho do boneco correto para cada número de erros
      expect(forca(2, " | \n O \n"), " | \n O \n/ \n");
      expect(forca(3, " | \n O \n"), " | \n O \n/| \n");
      expect(forca(4, " | \n O \n"), " | \n O \n/|\\ \n");
      expect(forca(5, " | \n O \n"), " | \n O \n/|\\ \n /  \n");
      expect(forca(6, " | \n O \n"), " | \n O \n/|\\ \n / \\ \n");
    });
  });
}