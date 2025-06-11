import 'package:elaro_version_nodir/features/cart/data/repository/cart_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cart_event.dart';
import 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository cartRepository;

  CartBloc(this.cartRepository) : super(CartInitial()) {
    on<LoadCart>((event, emit) {
      emit(CartLoaded(cartRepository.getCartItems()));
    });

    on<AddToCart>((event, emit) {
      cartRepository.addToCart(event.product);
      emit(CartLoaded(cartRepository.getCartItems()));
    });

    on<RemoveFromCart>((event, emit) {
      cartRepository.removeFromCart(event.product);
      emit(CartLoaded(cartRepository.getCartItems()));
    });

    on<ClearCart>((event, emit) {
      cartRepository.clearCart();
      emit(CartLoaded([]));
    });
  }
}
