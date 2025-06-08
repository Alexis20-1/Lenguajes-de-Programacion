class Empleado {
  String nombre;
  String puesto;
  double salario;

  Empleado(this.nombre, this.puesto, this.salario);
}

double calcularSalarioTotal(List<Empleado> empleados) {
  double total = 0;
  for (var empleado in empleados) {
    total += empleado.salario;
  }
  return total;
}

double calcularSalarioPromedio(List<Empleado> empleados) {
  if (empleados.isEmpty) return 0;
  double total = calcularSalarioTotal(empleados);
  return total / empleados.length;
}

void main() {
  List<Empleado> empleados = [
    Empleado("Ana Martinez", "Gerente", 25000),
    Empleado("Luis Perez", "Analista", 18000),
    Empleado("Carmen Gomez", "Programador", 20000),
    Empleado("Jose Sánchez", "Soporte Tecnico", 15000),
  ];

  double salarioTotal = calcularSalarioTotal(empleados);
  double salarioPromedio = calcularSalarioPromedio(empleados);

  print("Salario total de todos los empleados: L. $salarioTotal");
  print("Salario promedio: L. $salarioPromedio");
}
