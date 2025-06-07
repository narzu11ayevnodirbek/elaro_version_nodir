import 'package:elaro_version_nodir/features/main/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Elaro Version Nodir",
      home: MainScreen(),
    );
  }
}
