part of 'product_bloc_bloc.dart';

@immutable
sealed class ProductBlocState {}

final class ProductBlocLoadingState extends ProductBlocState {}

final class ProductBlocSuccessState extends ProductBlocState {
  final ProductModel data;
  ProductBlocSuccessState(this.data);
}

final class ProductBlocFailureState extends ProductBlocState {
  final FailureModel failure;
  ProductBlocFailureState(this.failure);
}
