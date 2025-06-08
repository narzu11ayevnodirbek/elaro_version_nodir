import 'package:elaro_version_nodir/features/main/presentation/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50 + MediaQuery.of(context).padding.top,
        backgroundColor: Colors.deepOrangeAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
        ),
        title: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            prefixIcon: Icon(Icons.search, color: Colors.blueGrey, size: 20),
            hintText: "Qidirish",
          ),
        ),
      ),
      body: HomeBody(),
    );
  }
}
