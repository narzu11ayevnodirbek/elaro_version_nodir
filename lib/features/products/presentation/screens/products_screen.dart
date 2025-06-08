import 'package:elaro_version_nodir/features/products/data/model/products_model.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  final List<Datum> data;
  const ProductsScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 2 / 3,
        ),
        itemBuilder: (context, index) {
          return Container(color: Colors.red);
        },
        itemCount: 20,
      ),
    );
  }
}
