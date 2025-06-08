import 'package:elaro_version_nodir/core/interceptor/interceptor.dart';
import 'package:elaro_version_nodir/features/products/data/repository/products_repository_impl.dart';
import 'package:elaro_version_nodir/features/products/presentation/blocs/product_bloc/product_bloc_bloc.dart';
import 'package:elaro_version_nodir/features/products/presentation/blocs/products_bloc/products_bloc_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> serviceLocator() async {
  _client();
  _styles();
  _datasources();
  _repositories();
  _usecase();
  _blocs();
}

void _blocs() {
  sl.registerFactory(() => ProductsBlocBloc(sl<ProductsRepositoryImpl>()));
  sl.registerFactory(() => ProductBlocBloc(sl<ProductsRepositoryImpl>()));
}

void _usecase() {}

void _repositories() {
  sl.registerLazySingleton<ProductsRepositoryImpl>(
    () => ProductsRepositoryImpl(sl<DioClient>()),
  );
}

void _datasources() {}

void _styles() {}

void _client() {
  sl.registerFactory(() => DioClient());
}
