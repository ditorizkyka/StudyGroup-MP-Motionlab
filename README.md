# 📘 Flutter Development - Minggu Ke-2: Slicing UI dengan Flutter

## 🚀 Pendahuluan

Dokumen ini merupakan panduan lengkap untuk memahami konsep dasar Flutter dan mempraktikkan **UI slicing** dari desain ke dalam aplikasi yang fungsional.

---

## 📋 Materi Pembelajaran

### 1. Pengantar Flutter

- Flutter adalah **SDK lintas platform** berbasis bahasa Dart.
- Memungkinkan pembuatan aplikasi untuk Android dan iOS dengan satu codebase.

### 2. Pengenalan Widget

- **Widget adalah semua elemen yang tampil di Flutter**, seperti teks, tombol, gambar, hingga layout.
- Widget diatur dalam **Widget Tree**, yaitu struktur hierarki yang terdiri dari parent dan child widget.

### 3. Widget Utama

- **MaterialApp**: Widget root untuk aplikasi berbasis Material Design.
- **Scaffold**: Struktur dasar halaman dalam Flutter.
- **SafeArea**:
  - Widget ini memastikan konten aplikasi tidak keluar dari dimensi layar atau terpotong oleh notch, status bar, atau elemen lainnya.

### 4. Layout Widget

- Gunakan **Column** untuk menyusun widget secara vertikal.
- Gunakan **Row** untuk menyusun widget secara horizontal.
- **Alignment** digunakan untuk mengatur posisi elemen secara presisi.

### 5. Gambar dalam Flutter

- **Image Network**:
  - Menampilkan gambar yang diambil langsung dari URL.
  - Contoh:
    ```dart
    Image.network('https://example.com/image.png');
    ```
- **Image Assets**:
  - Menampilkan gambar yang disimpan secara lokal di proyek.
  - Pastikan menambahkan referensi gambar di file `pubspec.yaml`.
  - Contoh konfigurasi di `pubspec.yaml`:
    ```yaml
    flutter:
      assets:
        - assets/images/
    ```
  - Contoh penggunaan:
    ```dart
    Image.asset('assets/images/example.png');
    ```

### 6. Tips Coding Flutter

- **Prettier**:
  - Gunakan ekstensi **Prettier** untuk merapikan format kode secara otomatis di editor Anda.
  - Pastikan Prettier diaktifkan untuk meningkatkan keterbacaan dan menjaga konsistensi kode.

### 7. Analogi Widget

#### a. Gambar Sepeda

- **Sepeda** menggambarkan bahwa UI Flutter adalah hasil kombinasi berbagai komponen kecil yang saling terhubung.
  - Sepeda sebagai **keseluruhan UI aplikasi**.
  - Komponen seperti stang, roda, pedal adalah widget yang membangun aplikasi.

#### b. Pohon Widget (Widget Tree)

- **Pohon Widget** menunjukkan struktur hierarki widget di Flutter.
  - **Root widget** (seperti `MaterialApp`) adalah akar pohon.
  - Cabang dan daun adalah **widget parent dan child** yang saling terhubung.

---

## 🌟 Penutup

Mari bangun aplikasi yang elegan, satu widget dalam satu waktu. 🎨💻
