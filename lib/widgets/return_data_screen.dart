import 'package:flutter/material.dart';

// buat return data screen

class ReturnDataScreen extends StatefulWidget {
  const ReturnDataScreen({Key? key}) : super(key: key);

  @override
  State<ReturnDataScreen> createState() => _ReturnDataScreenState();
}

class _ReturnDataScreenState extends State<ReturnDataScreen> {
  // buat controller
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(labelText: 'Enter name'),
              ),
            ),
            ElevatedButton(
              // disini penting karena nanti kita kirim snackbar jadi di initial halaman utama kita onPressed nya ke returndatascreem()
              child: const Text('KIRIM!'),
              onPressed: () {
                Navigator.pop(
                    context, _textController.text); // CEK KE HalamanUtama();
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}

// replace screen
class ReplacementScreen extends StatelessWidget {
  const ReplacementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/halamanLain');
            },
            // buka replacement screen ke another screen
            child: const Text('Buka Another Screen')),
      ),
    );
  }
}
