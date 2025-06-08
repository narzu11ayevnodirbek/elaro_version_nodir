part of 'products_bloc_bloc.dart';

@immutable
sealed class ProductsBlocEvent {}

final class ProductsFetchEvent extends ProductsBlocEvent {}

final class ProductsFetchNewEvent extends ProductsBlocEvent {}

final class ProductsFetchHitEvent extends ProductsBlocEvent {}

final class ProductsFetchDiscountEvent extends ProductsBlocEvent {}
