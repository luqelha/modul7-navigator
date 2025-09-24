# 📘 Modul 7
## 🚀 Navigator di Flutter

Pada modul ini, kita akan mempelajari cara **navigasi antar halaman** di Flutter menggunakan **Navigator**.  
Navigator memungkinkan kita berpindah dari satu halaman ke halaman lain dalam aplikasi, baik itu ke depan (push) maupun kembali (pop).

## 📌 Tentang Proyek
- **Nama Proyek:** game_ui_navigator  
- **Deskripsi:** Aplikasi menampilkan daftar game gratis. Saat user menekan tombol **Info**, aplikasi akan membuka halaman detail game dengan menggunakan **Navigator**.  

### 🎯 Tujuan:
1. Memahami penggunaan **Navigator.push()** dan **Navigator.pop()**.  
2. Membuat halaman baru (Detail Page).  
3. Mengirim data antar halaman menggunakan parameter.  


## 🔲 Konsep Utama

### 1. Navigator.push()
Digunakan untuk berpindah ke halaman baru.  

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => DetailPage(game: dataGame[index]),
  ),
);
```

### 2. Navigator.pop()
Digunakan untuk berpindah ke halaman sebelumnya.  

```dart
Navigator.pop(context);
```

### 3. Mengirim Data Antar Halaman
Kita bisa mengirim objek atau data ke halaman tujuan melalui konstruktor.

```dart
class DetailPage extends StatelessWidget {
  final Map<String, dynamic> game;

  const DetailPage({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(game['title'])),
      body: Column(
        children: [
          Image.network(game['thumbnail']),
          Text("Genre: ${game['genre']}"),
          Text("Release Date: ${game['release_date']}"),
        ],
      ),
    );
  }
}
```
