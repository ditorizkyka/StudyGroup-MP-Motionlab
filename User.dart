class User {
  String? name;
  double? saldo;

  User({this.name, this.saldo});

  void depositSaldo(double amount) {
    this.saldo = this.saldo! + amount;
  }

  double cekSaldo() {
    return this.saldo!;
  }

  void tarikSaldo(double amount) {
    if (this.saldo! >= amount) {
      this.saldo = this.saldo! - amount;
    } else {
      print("Saldo tidak cukup");
    }
  }
}
