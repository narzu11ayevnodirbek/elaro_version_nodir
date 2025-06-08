part of 'product_bloc_bloc.dart';

@immutable
sealed class ProductBlocEvent {}

final class ProductFetchByIdEvent extends ProductBlocEvent {
  final int id;
  ProductFetchByIdEvent(this.id);
}
