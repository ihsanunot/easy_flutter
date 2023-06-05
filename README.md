# Navigasi dan Routing

Harus cek dulu di onPressed button di class sama di initial Route nya jika gak kepanggil atau gak muncul apapun.

Bisa cek elevated button, Bisa ditambah async await jika tipe data turunan dari Future.

**Metode yang dipakai:**
- pushNamed()
- pop()
- pushReplacement
- pushReplacementNamed

teliti pada saat navigasi dan routing.

* Fungsi umum untuk pindah pindah screen

---

## Return data from a screen

Dalam beberapa kasus, Anda mungkin ingin mengembalikan data dari halaman baru. Misalnya, setelah pengguna memberikan sebuah input
Anda ingin mengolahnya di halaman sebelumnya. 

Method Navigator.pop() selain untuk menutup halaman juga berguna untuk mengembalikan nilai.

**Bisa untuk optional dalam screen seperti selective button, input isi ke form, dll.**

### void dispose(){}

ketika kita menggunakan test editing controller, aplikasi akan menyediakan memory untuk membuat controller tersebut berfungsi, 
dan controller akan tetap ada selama aplikasi dibuka, padahal kita hanya membutuhkan controller tersebut di satu halaman,.. 

jadi dipanggil lah method dispose agar ketika halaman ditutup, controller juga dihentikan... 
method dispose tersebut cukup didefinisikan saja, tidak perlu dipanggil secara manual karena akan otomatis terpanggil saat halamannya ditutup..

**Referensi:**
- https://docs.flutter.dev/cookbook/navigation/returning-data#3-show-the-selection-screen-with-two-buttons

---

Teliti dari beberapa Urutan fungsi yang harus dibuat duluan atau nanti.

#### Replace Screen
Navigasi dalam flutter berarti halaman atau screen menjadi bertumpuk alias stacked.

Namun, Anda juga memiliki opsi untuk membuat halaman baru dengan menggantikan stack yang sedang terbuka. 

Cara ini umum digunakan pada halaman seperti **splash screen** atau **login** di mana pengguna tidak perlu kembali ke halaman tersebut ketika menekan tombol back.

- **Method** :
* pushReplacement
* pushReplacementNamed

---

### Export in Flutter

Berguna untuk bikin file nya kita gak perlu banyak import di main.dart nya, cukup bikin file baru
di folder widgets atau folder yang anda gunakan untuk beberapa widget, lalu tinggal tempel aja
dengan method export 'contoh.dart';

Contoh :
```
// lokasi di folder widgets/index.dart
export 'halaman_utama.dart';
export 'halaman_kedua.dart';
export 'halaman_kedua_data.dart';
export 'return_data_screen.dart';
export 'another_screen.dart';
```

Lalu anda cukup tambahkan/import ini di main.dart nya:

```
import 'package:flutter/material.dart';
import 'widgets/index.dart';
```

Selesai, anda bisa cek sekarang main.dart anda lebih Clean.