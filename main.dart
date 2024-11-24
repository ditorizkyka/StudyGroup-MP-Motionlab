import 'user.dart';
import 'dart:io';

void main() {
  print('===========================================');
  print('         SELAMAT DATANG DI BANNKU          ');
  print('===========================================');
  print("Melakukan pembuatan akun!");
  print('-------------------------------------------');

  // Memasukkan nama pengguna
  stdout.write("Masukan Nama : ");
  String? nama = stdin.readLineSync() ?? '';
  while (nama == '' && nama!.isEmpty) {
    print("Nama tidak boleh kosong! Masukan lagi.");
    stdout.write("Masukan Nama : ");
    nama = stdin.readLineSync() ?? '';
  }

  // Memasukkan saldo awal
  stdout.write("Masukan Saldo Awal : ");
  String? saldoAwal = stdin.readLineSync() ?? '';
  double saldo = saldoAwal.isEmpty ? 0 : double.tryParse(saldoAwal) ?? 0;

  // Menampilkan informasi akun berhasil dibuat
  print('-------------------------------------------');
  print("AKUN BERHASIL DIBUAT!");
  print("Memasuki menu utama...");
  print("");

  User user = User(name: nama, saldo: saldo);

  // Menu utama
  int decision = -1;
  while (decision != 0) {
    printHeader("MENU UTAMA");
    print('[1] Cek Saldo');
    print('[2] Tarik Saldo');
    print('[3] Deposit Saldo');
    print('[0] Keluar');
    printLine();
    stdout.write("Pilih menu : ");
    String? input = stdin.readLineSync();
    decision = int.tryParse(input ?? '') ?? -1;

    switch (decision) {
      case 1:
        printHeader("CEK SALDO");
        printLine();
        print("Saldo saat ini: Rp ${user.cekSaldo().toStringAsFixed(2)}");
        printLine();
        print("");
        break;
      case 2:
        printHeader("TARIK SALDO");
        printLine();
        stdout.write("Masukan jumlah yang ingin diambil: ");
        String? tarik = stdin.readLineSync();
        double jumlahTarik = double.tryParse(tarik ?? '') ?? -1;
        if (jumlahTarik > 0) {
          user.tarikSaldo(jumlahTarik);
        } else {
          print("❌ Input tidak valid!");
        }
        printLine();
        print("");
        break;
      case 3:
        printHeader("DEPOSIT SALDO");
        printLine();
        stdout.write("Masukan jumlah yang ingin ditambahkan: ");
        String? deposit = stdin.readLineSync();
        double jumlahDeposit = double.tryParse(deposit ?? '') ?? -1;
        if (jumlahDeposit > 0) {
          user.depositSaldo(jumlahDeposit);
        } else {
          print("❌ Input tidak valid!");
        }
        printLine();
        print("");
        break;
      case 0:
        printHeader("TERIMA KASIH");
        print("Sampai jumpa lagi, ${user.name}!");
        printLine();
        print("");
        break;
      default:
        print("❌ Pilihan tidak valid!");
        break;
    }
  }
}

printHeader(String title) {
  print('===============================');
  print('          $title');
  print('===============================');
}

// Fungsi untuk mencetak garis pemisah
printLine() {
  print('-------------------------------');
}
