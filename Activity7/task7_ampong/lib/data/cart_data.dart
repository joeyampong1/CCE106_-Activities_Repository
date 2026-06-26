import '../models/cart_model.dart';
import '../models/product_model.dart';

class CartData {
  static final List<CartItem> _cartItems = [];

  // Get all cart items
  static List<CartItem> get items => List.unmodifiable(_cartItems);

  // Get total number of items in cart
  static int get itemCount {
    int count = 0;
    for (var item in _cartItems) {
      count += item.quantity;
    }
    return count;
  }

  // Get total price of all items in cart
  static double get totalPrice {
    double total = 0;
    for (var item in _cartItems) {
      total += item.totalPrice;
    }
    return total;
  }

  // Add product to cart
  static void addProduct(Product product) {
    // Check if product already exists in cart
    for (var item in _cartItems) {
      if (item.product == product) {
        item.increment();
        return;
      }
    }
    // If not exists, add new item
    _cartItems.add(CartItem(product: product));
  }

  // Remove product from cart
  static void removeProduct(Product product) {
    _cartItems.removeWhere((item) => item.product == product);
  }

  // Increment quantity of a specific item
  static void incrementQuantity(CartItem item) {
    item.increment();
  }

  // Decrement quantity of a specific item
  static void decrementQuantity(CartItem item) {
    if (item.quantity > 1) {
      item.decrement();
    } else {
      _cartItems.remove(item);
    }
  }

  // Clear all items from cart
  static void clearCart() {
    _cartItems.clear();
  }

  // Check if product is in cart
  static bool isInCart(Product product) {
    return _cartItems.any((item) => item.product == product);
  }

  // Get quantity of a specific product in cart
  static int getQuantity(Product product) {
    for (var item in _cartItems) {
      if (item.product == product) {
        return item.quantity;
      }
    }
    return 0;
  }
}