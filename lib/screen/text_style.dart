import 'package:flutter/material.dart';

class TextStyleWidget extends StatelessWidget {
  const TextStyleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Text("Text Style")),
            body: Center(
              child: Text(
                "Ini adalah text",
                style: TextStyle(fontFamily: "Acme", fontSize: 30),
              ),
            )));
  }
}

/*
NB : Cara menggunakan custom font :
1. masukan file .fft ke dalam folder font
2. daftarkan ke pubspec.yaml
*/