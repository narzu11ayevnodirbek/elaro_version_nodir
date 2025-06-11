import 'package:elaro_version_nodir/features/cart/data/model/cart_item_model.dart';
import 'package:elaro_version_nodir/features/cart/data/model/product_model.dart';
import 'package:hive/hive.dart';

class CartRepository {
  final Box<CartItemModel> cartBox = Hive.box<CartItemModel>('cartBox');

  List<CartItemModel> getCartItems() {
    return cartBox.values.toList();
  }

  void addToCart(ProductModel product) {
    final existing = cartBox.values.firstWhere(
      (item) => item.product.id == product.id,
      orElse: () => CartItemModel(product: product, quantity: 0),
    );

    if (existing.quantity == 0) {
      cartBox.add(CartItemModel(product: product, quantity: 1));
    } else {
      existing.quantity += 1;
      existing.save();
    }
  }

  void removeFromCart(ProductModel product) {
    final existingKey = cartBox.keys.firstWhere(
      (key) => cartBox.get(key)!.product.id == product.id,
      orElse: () => null,
    );

    if (existingKey != null) {
      cartBox.delete(existingKey);
    }
  }

  void clearCart() {
    cartBox.clear();
  }
}
