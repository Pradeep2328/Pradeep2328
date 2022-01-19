import 'package:flutter/material.dart';
import 'package:granulation/view/login.dart';
import 'package:granulation/view/shifting.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Shifting(),
      //home: LogIn(),
    );
  }
}
