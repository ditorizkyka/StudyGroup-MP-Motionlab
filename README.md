# README: Migrasi Project Menggunakan GetX dan Get CLI

## Pendahuluan

Saya menggunakan GetX, sebuah package Flutter yang mempermudah pengelolaan state, navigasi, dan dependensi dengan performa tinggi. Dengan Get CLI, saya bisa dengan mudah membuat struktur folder dan file yang sesuai dengan arsitektur MVC (Model-View-Controller). Panduan ini merangkum cara saya mengubah keseluruhan proyek Flutter menggunakan GetX dan Get CLI.

## Prasyarat

Sebelum memulai, saya memastikan sudah menginstal:

1. Flutter SDK
2. Package GetX yang ditambahkan ke dalam pubspec.yaml.
3. Get CLI yang saya instal dengan perintah: flutter pub global activate get_cli.

## Langkah-langkah Migrasi dengan Get CLI

### 1. Inisialisasi Get CLI

Saya memeriksa instalasi Get CLI dengan mengetik perintah: get --version. Jika berhasil, versi Get CLI akan muncul.

### 2. Membuat Proyek Baru

Jika saya memulai proyek dari awal, saya menggunakan perintah: get create project. Untuk proyek yang sudah ada, saya lanjutkan ke langkah berikutnya.

### 3. Membuat Modul dengan Get CLI

Saya membuat modul berbasis MVC dengan perintah: get generate page:halaman_nama.

Sebagai contoh, ketika saya membuat halaman "home", saya menjalankan perintah: get generate page:home. Modul tersebut menghasilkan struktur folder yang terdiri atas:

- **bindings**: Tempat saya mengelola dependencies dengan Get.lazyPut.
- **controllers**: Tempat saya menulis logika bisnis dan state.
- **views**: Tempat saya membuat UI untuk halaman.

### 4. Registrasi Halaman

Saya menambahkan rute halaman di app_pages.dart. Setiap rute dideklarasikan dengan menggunakan GetPage yang mencakup nama, halaman, dan binding untuk setiap modul.

### 5. Menjalankan Proyek

Setelah selesai, saya menjalankan aplikasi dengan perintah: flutter run.

## Kesimpulan

Dengan mengikuti langkah-langkah ini, saya berhasil memanfaatkan GetX dan Get CLI untuk membuat proyek Flutter saya lebih terstruktur dan efisien. GetX memudahkan pengelolaan state, dependency injection, dan navigasi, sehingga saya dapat meningkatkan produktivitas.

## Referensi

- Dokumentasi Resmi GetX: https://pub.dev/packages/get
- Dokumentasi Get CLI: https://github.com/jonataslaw/get_cli

Happy Coding! 🚀
