class Libro {
  String titulo;
  String autor;
  int anioPublicacion;

  Libro(this.titulo, this.autor, this.anioPublicacion);

  @override
  String toString() {
    return '"$titulo" por $autor ($anioPublicacion)';
  }
}

class Biblioteca {
  List<Libro> libros = [];

  void agregarLibro(Libro libro) {
    libros.add(libro);
    print('Libro agregado: ${libro.titulo}');
  }

  void eliminarLibro(String titulo) {
    libros.removeWhere(
      (libro) => libro.titulo.toLowerCase() == titulo.toLowerCase(),
    );
    print('Libro eliminado: $titulo');
  }

  List<Libro> buscarPorAutor(String autor) {
    return libros
        .where((libro) => libro.autor.toLowerCase() == autor.toLowerCase())
        .toList();
  }

  List<Libro> listarOrdenadosPorAnio() {
    List<Libro> ordenados = List.from(libros);
    ordenados.sort((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion));
    return ordenados;
  }
}

void main() {
  Biblioteca miBiblioteca = Biblioteca();

  miBiblioteca.agregarLibro(
    Libro("Cien Años de Soledad", "Gabriel García Márquez", 1967),
  );
  miBiblioteca.agregarLibro(
    Libro("El Principito", "Antoine de Saint-Exupéry", 1943),
  );
  miBiblioteca.agregarLibro(Libro("Rayuela", "Julio Cortázar", 1963));
  miBiblioteca.agregarLibro(
    Libro("Crónica de una Muerte Anunciada", "Gabriel García Márquez", 1981),
  );

  print("\nLibros de Gabriel García Márquez:");
  for (var libro in miBiblioteca.buscarPorAutor("Gabriel García Márquez")) {
    print(libro);
  }

  miBiblioteca.eliminarLibro("Rayuela");

  print("\nLibros ordenados por año de publicación:");
  for (var libro in miBiblioteca.listarOrdenadosPorAnio()) {
    print(libro);
  }
}
