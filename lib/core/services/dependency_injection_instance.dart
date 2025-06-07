import 'package:elaro_version_nodir/core/interceptor/interceptor.dart';
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

void _blocs() {}

void _usecase() {}

void _repositories() {}

void _datasources() {}

void _styles() {}

void _client() {
  sl.registerFactory(() => DioClient());
}
