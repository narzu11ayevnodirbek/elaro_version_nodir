import 'package:elaro_version_nodir/features/cart/data/model/product_model.dart';
import 'package:elaro_version_nodir/features/cart/presentation/screens/product_screen.dart';
import 'package:elaro_version_nodir/features/main/presentation/screens/home_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ValueNotifier<int> currentIndex = ValueNotifier(0);
  final ProductModel product = ProductModel(
    id: 2,
    nameUz: "nameUz",
    imageUrl: "imageUrl",
    price: 200,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: currentIndex,
        builder: (context, value, _) {
          return IndexedStack(
            index: value,
            children: [
              HomePage(),
              Container(color: Colors.green),
              ProductScreen(product: product),
              Container(color: Colors.yellow),
              Container(color: Colors.black),
            ],
          );
        },
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: currentIndex,
        builder: (context, value, _) {
          return BottomNavigationBar(
            currentIndex: value,
            onTap: (index) {
              currentIndex.value = index;
            },
            backgroundColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: "categories",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outlined),
                label: "orders",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "profile",
              ),
            ],
          );
        },
      ),
    );
  }
}
