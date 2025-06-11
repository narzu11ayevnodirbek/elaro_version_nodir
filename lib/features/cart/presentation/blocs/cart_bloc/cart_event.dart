import 'package:elaro_version_nodir/features/cart/data/model/product_model.dart';


abstract class CartEvent {}

class LoadCart extends CartEvent {}

class AddToCart extends CartEvent {
  final ProductModel product;
  AddToCart(this.product);
}

class RemoveFromCart extends CartEvent {
  final ProductModel product;
  RemoveFromCart(this.product);
}

class ClearCart extends CartEvent {}
