import 'package:elaro_version_nodir/features/products/data/model/product_model.dart';
import 'package:elaro_version_nodir/features/products/data/model/products_model.dart';

abstract class ProductsRepository {
  Future<ProductsModel> fetchProducts();
  Future<ProductsModel> fetchHitProducts();
  Future<ProductsModel> fetchDiscountProducts();
  Future<ProductsModel> fetchNewProducts();
  Future<ProductModel> fetchProductById(int id);
}
