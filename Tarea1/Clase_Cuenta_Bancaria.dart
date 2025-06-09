class CuentaBancaria {
  String titular;
  double saldo;

  CuentaBancaria(this.titular, [this.saldo = 0]);

  void depositar(double cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
      print("Se depositaron L. $cantidad. Nuevo saldo: L. $saldo");
    } else {
      print("La cantidad a depositar debe ser positiva.");
    }
  }

  void retirar(double cantidad) {
    if (cantidad <= 0) {
      print("La cantidad a retirar debe ser mayor que cero.");
    } else if (cantidad > saldo) {
      print("Fondos insuficientes. Saldo disponible: L. $saldo");
    } else {
      saldo -= cantidad;
      print("Se retiraron L. $cantidad. Nuevo saldo: L. $saldo");
    }
  }

  void consultarSaldo() {
    print("Saldo actual de $titular: L. $saldo");
  }
}

void main() {
  CuentaBancaria cuenta = CuentaBancaria("Alexis Umaña", 1000);

  cuenta.consultarSaldo();
  cuenta.depositar(500);
  cuenta.retirar(300);
  cuenta.retirar(2000);
  cuenta.consultarSaldo();
}
