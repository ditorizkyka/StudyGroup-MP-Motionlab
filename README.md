# State Management + MVC

## State Management

**State Management** adalah proses mengelola _state_ (data atau informasi) dalam aplikasi. State merepresentasikan kondisi aplikasi pada suatu waktu.

### Penggunaan State

- Untuk input pengguna.
- Mengelola data dari server.
- Menampilkan elemen UI yang dinamis.

---

## MVC (Model-View-Controller)

MVC adalah pola desain yang memisahkan komponen aplikasi menjadi tiga bagian utama:

### Komponen Utama

- **Model**: Mengelola data.
- **View**: Bertanggung jawab untuk tampilan UI.
- **Controller**: Penghubung antara Model dan View, menangani logika aplikasi.

---

## GetX (State Management)

GetX menawarkan metode sederhana untuk mengelola state dengan dua pendekatan utama:

### 1. GetX Reactive

#### Definisi

Menggunakan `Rx` (Reactive Data Type) untuk langsung mengamati perubahan dalam variabel.

#### Format dan Contoh

- `RxInt count = 0.obs;`
- `RxString message = ''.obs;`
- **List Reactive**: `RxList<String> items = <String>[].obs;`

#### Penggunaan dalam Widget

UI akan diperbarui ketika `state` berubah dengan bantuan widget `Obx()`:

```dart
Obx(() => Text("Nilai: ${controller.count}"));
```

### 2. GetX Simple

#### Definisi

Menggunakan tipe data biasa tanpa `RxType`.

#### Controller

Membutuhkan `GetxController` dan menggunakan metode `update()` untuk memperbarui UI.

#### Contoh

```dart
class CounterController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update(); // Memperbarui UI
  }
}
```

---

## Snippet Visual Studio Code (VSCode)

### Apa Itu Snippet?

_Snippet_ adalah cuplikan kode yang dapat digunakan untuk mempercepat penulisan kode dengan shortcut khusus.

### Manfaat

- Mempercepat penulisan kode rutin seperti struktur GetX atau widget pada Flutter.
- Mengurangi kesalahan sintaks.

### Cara Membuat Snippet Custom

1. Buka Command Palette (`Ctrl + Shift + P`).
2. Ketik `Configure User Snippets` → Pilih **Dart** atau proyek spesifik.
3. Tambahkan _template_ kode seperti berikut:

```json
"GetX Controller Template": {
  "prefix": "getxctrl",
  "body": [
    "import 'package:get/get.dart';",
    "",
    "class ${1:ControllerName} extends GetxController {",
    "  var ${2:count} = 0.obs;",
    "",
    "  void ${3:increment}() {",
    "    $2++;",
    "  }",
    "}"
  ],
  "description": "Template untuk GetX Controller"
}
```

#### Hasil

Ketik shortcut `getxctrl` untuk menghasilkan controller baru secara otomatis.
