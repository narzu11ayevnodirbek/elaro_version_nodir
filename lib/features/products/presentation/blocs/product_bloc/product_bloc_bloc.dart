import 'package:bloc/bloc.dart';
import 'package:elaro_version_nodir/core/error/failure_model.dart';
import 'package:elaro_version_nodir/features/products/data/model/product_model.dart';
import 'package:elaro_version_nodir/features/products/data/repository/products_repository_impl.dart';
import 'package:meta/meta.dart';

part 'product_bloc_event.dart';
part 'product_bloc_state.dart';

class ProductBlocBloc extends Bloc<ProductBlocEvent, ProductBlocState> {
  final ProductsRepositoryImpl impl;
  ProductBlocBloc(this.impl) : super(ProductBlocLoadingState()) {
    on<ProductFetchByIdEvent>(_productFetchByIdEvent);
  }

  _productFetchByIdEvent(
    ProductFetchByIdEvent event,
    Emitter<ProductBlocState> emit,
  ) async {
    try {
      emit(ProductBlocLoadingState());
      final request = await impl.fetchProductById(event.id);
      emit(ProductBlocSuccessState(request));
    } catch (e) {
      emit(ProductBlocFailureState(FailureModel(e.toString())));
    }
  }
}
