import 'package:flutter/material.dart';
import 'package:project_1100/pages/onboad/onboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: const OnBoardPage());
  }
}
