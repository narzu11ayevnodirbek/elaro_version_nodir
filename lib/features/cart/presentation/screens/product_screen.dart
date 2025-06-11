import 'package:elaro_version_nodir/features/cart/data/model/product_model.dart';
import 'package:elaro_version_nodir/features/cart/presentation/blocs/cart_bloc/cart_bloc.dart';
import 'package:elaro_version_nodir/features/cart/presentation/blocs/cart_bloc/cart_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatelessWidget {
  final ProductModel product;

  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.nameUz)),
      body: Column(
        children: [
          Image.network(product.imageUrl, height: 200),
          Text('${product.price} so\'m'),
          ElevatedButton(
            onPressed: () {
              context.read<CartBloc>().add(AddToCart(product));
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("Savatga qo'shildi")));
            },
            child: const Text("Savatga qo'shish"),
          ),
        ],
      ),
    );
  }
}
