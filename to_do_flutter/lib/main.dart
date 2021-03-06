import 'package:flutter/material.dart';
import 'package:to_do_flutter/screen/to_do_detail.dart';
import 'package:to_do_flutter/screen/to_do_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => ToDoScreen(),
      },
    );
  }
}
