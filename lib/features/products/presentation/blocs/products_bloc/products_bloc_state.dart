part of 'products_bloc_bloc.dart';

@immutable
sealed class ProductsBlocState {}

final class ProductsBlocLoadingState extends ProductsBlocState {}

final class ProductsBlocSuccessState extends ProductsBlocState {
  final ProductsModel data;
  ProductsBlocSuccessState(this.data);
}

final class ProductsBlocFailureState extends ProductsBlocState {
  final FailureModel error;
  ProductsBlocFailureState(this.error);
}
