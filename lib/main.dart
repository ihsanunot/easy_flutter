import 'package:flutter/material.dart';
import 'widgets/index.dart'; // isi index.dart dari beberapa widgets lainnya biar kita cukup import ke file utama nya sedikit saja dan lebih clean code di main.dart nya

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NavigasiRouter IHS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HalamanUtama(),
        '/halamanKedua': (context) => const HalamanKedua(),
        '/halamanKeduaPakaiData': (context) => HalamanKeduaWithData(
            ModalRoute.of(context)?.settings.arguments as String),
        '/kembaliData': (context) => const ReturnDataScreen(),
        '/gantiHalaman': (context) => const ReplacementScreen(),
        '/halamanLain': (context) => const AnotherScreen(),
      },
    );
  }
}
