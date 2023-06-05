import 'package:flutter/material.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigasi Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Go to Second Screen'),
              onPressed: () {
                Navigator.pushNamed(context, '/halamanKedua');
              },
            ),
            // tambah properti dari method pushNamed
            ElevatedButton(
              child: const Text('Navigation with Data'),
              onPressed: () {
                Navigator.pushNamed(context, '/halamanKeduaPakaiData',
                    arguments: 'Hallo dari screen utama');
              },
            ),
            ElevatedButton(
              child: const Text('Return Data from Another Screen'),
              // mengembalikan data dari seconscreendata ke halaman utama
              onPressed: () async {
                final scaffoldPesan = ScaffoldMessenger.of(context);
                final hasil =
                    await Navigator.pushNamed(context, '/kembaliData');
                SnackBar snackBar = SnackBar(content: Text('$hasil'));
                scaffoldPesan.showSnackBar(snackBar);
              },
            ),
            ElevatedButton(
              child: const Text('Replace Screen'),
              onPressed: () {
                Navigator.pushNamed(context, '/gantiHalaman');
              },
            ),
          ],
        ),
      ),
    );
  }
}
