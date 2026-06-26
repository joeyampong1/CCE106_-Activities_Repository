import 'product_model.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({
    required this.product,
    this.quantity = 1,
  });

  // Total price for this cart item
  double get totalPrice => product.price * quantity;

  // Increase quantity
  void increment() {
    quantity++;
  }

  // Decrease quantity (minimum 1)
  void decrement() {
    if (quantity > 1) {
      quantity--;
    }
  }
}