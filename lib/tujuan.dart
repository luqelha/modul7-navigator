import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[600],
      appBar: AppBar(
        title: const Text(
          'Ini Halaman Tujuan',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red[600],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.red[600],
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Untuk berpindah ke halaman baru, gunakan metode Navigator.push() . Metode push() akan menambahkan Route ke dalam tumpukan Route yang dikelola oleh Navigator. Route ini dapat dibuat secara kustom atau menggunakan MaterialPageRoute, yang memiliki animasi transisi sesuai dengan platform yang digunakan.',
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 80),
            Center(
              child: Image.asset('assets/images/island_icon.png', width: 150),
            ),
            const SizedBox(height: 80),
            const Text(
              'Untuk menutup halaman kedua dan kembali ke halaman pertama, gunakan metode Navigator.pop(). Metode pop() akan menghapus Route saat ini dari tumpukan Route yang dikelola oleh Navigator.',
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 80),
            Center(
              child: SizedBox(
                width: 200,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue[500],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  onPressed: () {
                    Navigator.pop(context, '/home');
                  },
                  child: const Text('< Kembali ke home'),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
