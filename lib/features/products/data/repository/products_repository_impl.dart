import 'package:elaro_version_nodir/core/interceptor/interceptor.dart';
import 'package:elaro_version_nodir/features/products/data/model/product_model.dart';
import 'package:elaro_version_nodir/features/products/data/model/products_model.dart';
import 'package:elaro_version_nodir/features/products/domain/repository/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final DioClient dio;
  ProductsRepositoryImpl(this.dio);
  @override
  Future<ProductsModel> fetchDiscountProducts() {
    throw UnimplementedError();
  }

  @override
  Future<ProductsModel> fetchHitProducts() {
    // TODO: implement fetchHitProducts
    throw UnimplementedError();
  }

  @override
  Future<ProductsModel> fetchNewProducts() {
    // TODO: implement fetchNewProducts
    throw UnimplementedError();
  }

  @override
  Future<ProductModel> fetchProductById(int id) {
    // TODO: implement fetchProductById
    throw UnimplementedError();
  }

  @override
  Future<ProductsModel> fetchProducts() {
    // TODO: implement fetchProducts
    throw UnimplementedError();
  }
}
