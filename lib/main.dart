import 'package:elaro_version_nodir/core/services/dependency_injection_instance.dart';
import 'package:elaro_version_nodir/features/cart/data/model/cart_item.dart';
import 'package:elaro_version_nodir/features/cart/data/model/cart_item_model.dart';
import 'package:elaro_version_nodir/features/cart/data/repository/cart_repository.dart';
import 'package:elaro_version_nodir/features/cart/presentation/blocs/cart_bloc/cart_bloc.dart';
import 'package:elaro_version_nodir/features/cart/presentation/blocs/cart_bloc/cart_event.dart';
import 'package:elaro_version_nodir/features/main/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(CartItemAdapter());
  await Hive.openBox<CartItemModel>('cartBox');
  await serviceLocator();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final CartRepository cartRepository = CartRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CartBloc(cartRepository)..add(LoadCart()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Elaro Version Nodir",
        home: MainScreen(),
      ),
    );
  }
}
