void main() {
  List<int> numeros = [1, 2, 2, 3, 4, 4, 5, 1, 6, 7, 7, 8];
  List<int> unicos = [];

  for (int numero in numeros) {
    if (!unicos.contains(numero)) {
      unicos.add(numero);
    }
  }

  print("lista original: $numeros");
  print("elementos unicos: $unicos");
}
