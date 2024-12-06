# Rangkuman Minggu ke-3 Pertemuan Motion Lab

## 📌 **Materi: Package, Widget Lifecycle, dan State Management**

---

### **1. Package**

#### 📖 Pengertian

- **Package**: Kumpulan kode Dart yang telah dibuat sebelumnya untuk membantu pengembangan aplikasi Flutter.
- **Jenis Package**:
  - **Library**: Hanya berisi kode Dart.
  - **Plugin**: Berisi kode Dart dan kode native (Kotlin/Swift/Java).

#### 💡 Contoh Package

- **Google Fonts**: Mengakses font dari Google Fonts.
- **Lottie**: Menambahkan animasi berbasis JSON ke aplikasi.

#### 🔗 Sumber Package

- [Pub.dev](https://pub.dev)
- [Flutter Gems](https://fluttergems.dev)

---

### **2. Widget Lifecycle**

#### 🌀 Siklus Hidup Widget

1. **Stateless Widget**:

   - State tidak berubah.
   - Siklus:
     - **Constructor**
     - **build()**

2. **Stateful Widget**:
   - Widget yang state-nya dapat berubah.
   - Siklus:
     1. **Constructor**
     2. **createState()**
     3. **initState()**
     4. **build()**
     5. **setState()**: Untuk memberitahu framework bahwa ada perubahan state.

---

### **3. Callback Function**

#### 🔄 Pengertian

- **Callback Function**: Fungsi yang diberikan ke fungsi lain sebagai parameter dan dipanggil kembali setelah tugas selesai atau suatu peristiwa terjadi.

---

### **4. State dan State Management**

#### 🔎 Pengertian State

- State adalah informasi dalam aplikasi yang dapat berubah, seperti:
  - Poin dalam game.
  - Input pengguna di aplikasi catatan.

#### 🛠️ Jenis Widget Berdasarkan State

1. **Stateless Widget**:
   - Tidak berubah setelah dibuat.
2. **Stateful Widget**:
   - Dapat berubah menggunakan metode seperti `setState`.

#### 🌳 Widget Tree

- **Widget Tree**:
  - Struktur hierarki yang menyusun UI aplikasi Flutter.
- **Inherited Widget**:
  - Digunakan untuk berbagi data antar widget tanpa mengoper data secara eksplisit.

#### ⚙️ State Management

- Proses pengelolaan state untuk memastikan UI mencerminkan kondisi aplikasi secara efisien.

---

## 📝 **Tugas Minggu ke-3**

1. **Membuat UI Slicing**:
   - Halaman Login.
   - Halaman Register.
2. **Menambahkan Navigasi Antar Halaman**.
3. **Mengimplementasikan Reusable Widget**.

---

> ⚠️ **Catatan**: Sumber berasal dari PPT MotionLab minggu 3 dan 3.5!.
