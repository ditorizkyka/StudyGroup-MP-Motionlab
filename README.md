📌 Local Storage di Flutter: Hive & SharedPreferences
Dalam pengembangan aplikasi Flutter, terkadang kita perlu menyimpan data secara lokal agar bisa diakses kembali tanpa harus mengambilnya dari server. Dua pilihan populer untuk penyimpanan lokal di Flutter adalah:

Hive: Database NoSQL berbasis key-value yang cepat dan ringan.
SharedPreferences: Penyimpanan berbasis key-value untuk data kecil seperti preferensi pengguna.
🚀 1. Menggunakan Hive untuk Menyimpan Status Login
Hive cocok untuk menyimpan data yang sering digunakan seperti status login (isLoggedIn). Berikut adalah langkah-langkah menggunakannya:

📌 Instalasi Hive
Tambahkan dependency berikut di pubspec.yaml:

yaml
Copy
Edit
dependencies:
hive: ^2.2.3
hive_flutter: ^1.1.0

dev_dependencies:
hive_generator: ^2.0.0
build_runner: ^2.4.6
📌 Inisialisasi Hive
Tambahkan inisialisasi di main.dart:

dart
Copy
Edit
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Hive.initFlutter();
await Hive.openBox('authBox');
runApp(MyApp());
}
📌 Simpan dan Ambil Status Login
dart
Copy
Edit
class AuthService {
static final \_box = Hive.box('authBox');

// Simpan status login
static Future<void> setLoginStatus(bool status) async {
await \_box.put('isLoggedIn', status);
}

// Ambil status login
static bool getLoginStatus() {
return \_box.get('isLoggedIn', defaultValue: false);
}
}
📌 Cara Penggunaan
dart
Copy
Edit
void main() async {
await AuthService.setLoginStatus(true);
bool isLoggedIn = AuthService.getLoginStatus();
print("User Logged In: $isLoggedIn");
}
✅ Keuntungan menggunakan Hive untuk login:

Cepat dan ringan.
Bisa menyimpan berbagai jenis data tanpa serialisasi manual.
Tidak memerlukan async setiap kali membaca data (langsung tersedia di memori).
⭐ 2. Menggunakan SharedPreferences untuk Produk Favorit
Jika kita ingin menyimpan daftar produk favorit, kita bisa menggunakan SharedPreferences karena lebih sederhana untuk menyimpan list dalam bentuk JSON.

📌 Instalasi SharedPreferences
Tambahkan dependency berikut di pubspec.yaml:

yaml
Copy
Edit
dependencies:
shared_preferences: ^2.2.2
📌 Simpan dan Ambil Produk Favorit
dart
Copy
Edit
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class ProductService {
static const String \_favKey = "favorite_products";

// Menambahkan produk ke favorit
static Future<void> addFavoriteProduct(int productId) async {
final prefs = await SharedPreferences.getInstance();
List<int> favorites = await getFavoriteProducts();
if (!favorites.contains(productId)) {
favorites.add(productId);
await prefs.setString(\_favKey, json.encode(favorites));
}
}

// Menghapus produk dari favorit
static Future<void> removeFavoriteProduct(int productId) async {
final prefs = await SharedPreferences.getInstance();
List<int> favorites = await getFavoriteProducts();
favorites.remove(productId);
await prefs.setString(\_favKey, json.encode(favorites));
}

// Mendapatkan daftar produk favorit
static Future<List<int>> getFavoriteProducts() async {
final prefs = await SharedPreferences.getInstance();
String? jsonString = prefs.getString(\_favKey);
if (jsonString != null) {
return List<int>.from(json.decode(jsonString));
}
return [];
}
}
📌 Cara Penggunaan
dart
Copy
Edit
void main() async {
await ProductService.addFavoriteProduct(101);
await ProductService.addFavoriteProduct(102);

List<int> favorites = await ProductService.getFavoriteProducts();
print("Favorite Products: $favorites"); // Output: [101, 102]
}
✅ Keuntungan menggunakan SharedPreferences untuk produk favorit:

Cocok untuk menyimpan data kecil berbasis key-value.
Mudah digunakan untuk menyimpan list sederhana dalam bentuk JSON.
Bisa digunakan tanpa perlu tambahan adapter seperti Hive.
📌 Kesimpulan
Kriteria Hive 🐝 SharedPreferences 📦
Tipe Data Objek kompleks, List, Map String, int, double, bool, JSON
Kecepatan Sangat cepat Cepat
Kompleksitas Butuh adapter untuk objek kompleks Sederhana
Cocok Untuk Cache, database ringan, user session Pengaturan pengguna, daftar ID, preferensi
Jika Anda ingin menyimpan data kompleks seperti status login atau daftar pengguna, Hive lebih direkomendasikan.
Sedangkan untuk data sederhana seperti preferensi pengguna atau daftar produk favorit berbasis ID, SharedPreferences adalah pilihan yang lebih baik.
