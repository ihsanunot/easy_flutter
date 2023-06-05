import 'package:flutter/material.dart';

class HalamanKeduaWithData extends StatelessWidget {
  final String iniData;

  // constructor buat kirim data
  const HalamanKeduaWithData(this.iniData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(iniData),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Kembali')),
          ],
        ),
      ),
    );
  }
}
