import 'package:flutter/material.dart';

import 'home.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              displayLarge: TextStyle(fontSize: 50, color: Colors.amber)),
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue, primary: Colors.indigo),
          indicatorColor: Colors.purple),
      home: HomePage(),
    );
  }
}
