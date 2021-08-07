import 'package:flutter/material.dart';
import 'package:flutter_style/screen/text_style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Style',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextStyleWidget(),
    );
  }
}
