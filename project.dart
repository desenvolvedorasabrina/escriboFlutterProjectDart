import 'dart:io';

void project() {
  stdout.write("Digite um valor: ");
  String? input = stdin.readLineSync();
  
  if (input == null) {
    print("Erro: entrada inválida!");
    return;
  }

  try {
    int valor = int.parse(input);

    if (valor < 0 || valor % 1 != 0) {
      print("Digite um valor");
      return;
    }

    int calculo = 0;
    List<int> dividendo = [];

    for (int i = 1; i < valor; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        calculo += i;
        dividendo.add(i);
      }
    }

    print("Resultado da soma: $calculo");
    print("Total da divisão: $dividendo");
  } catch (e) {
    print("Erro: o número deve ser inteiro positivo.");
  }
}

void main() {
  project();
}
