import 'package:bloc/bloc.dart';
import 'package:elaro_version_nodir/core/error/failure_model.dart';
import 'package:elaro_version_nodir/features/products/data/model/products_model.dart';
import 'package:elaro_version_nodir/features/products/data/repository/products_repository_impl.dart';
import 'package:flutter/material.dart';

part 'products_bloc_event.dart';
part 'products_bloc_state.dart';

class ProductsBlocBloc extends Bloc<ProductsBlocEvent, ProductsBlocState> {
  final ProductsRepositoryImpl impl;
  ProductsBlocBloc(this.impl) : super(ProductsBlocLoadingState()) {
    on<ProductsFetchEvent>(_productsFetchEvent);
    on<ProductsFetchNewEvent>(_productsFetchNewEvent);
    on<ProductsFetchHitEvent>(_productsFetchHitEvent);
    on<ProductsFetchDiscountEvent>(_productsFetchDiscountEvent);
  }

  _productsFetchEvent(
    ProductsFetchEvent event,
    Emitter<ProductsBlocState> emit,
  ) async {
    try {
      emit(ProductsBlocLoadingState());
      final request = await impl.fetchProducts();
      emit(ProductsBlocSuccessState(request));
    } catch (e) {
      emit(ProductsBlocFailureState(FailureModel(e.toString())));
    }
  }

  _productsFetchNewEvent(
    ProductsFetchNewEvent event,
    Emitter<ProductsBlocState> emit,
  ) async {
    try {
      emit(ProductsBlocLoadingState());
      final request = await impl.fetchNewProducts();
      emit(ProductsBlocSuccessState(request));
    } catch (e) {
      emit(ProductsBlocFailureState(FailureModel(e.toString())));
    }
  }

  _productsFetchHitEvent(
    ProductsFetchHitEvent event,
    Emitter<ProductsBlocState> emit,
  ) async {
    try {
      emit(ProductsBlocLoadingState());
      final request = await impl.fetchHitProducts();
      emit(ProductsBlocSuccessState(request));
    } catch (e) {
      emit(ProductsBlocFailureState(FailureModel(e.toString())));
    }
  }

  _productsFetchDiscountEvent(
    ProductsFetchDiscountEvent event,
    Emitter<ProductsBlocState> emit,
  ) async {
    try {
      emit(ProductsBlocLoadingState());
      final request = await impl.fetchDiscountProducts();

      emit(ProductsBlocSuccessState(request));
    } catch (e) {
      emit(ProductsBlocFailureState(FailureModel(e.toString())));
    }
  }
}
