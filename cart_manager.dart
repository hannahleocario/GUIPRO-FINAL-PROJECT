  import '../models/product.dart';

class CartManager {
  static final CartManager _instance = CartManager._internal();

  factory CartManager() => _instance;

  CartManager._internal();

  final List<Product> _items = [];

  List<Product> get items => _items;

  void addProduct(Product product) {
    _items.add(product);
  }

  void removeProduct(Product product) {
    _items.remove(product);
  }

  void clearCart() {
    _items.clear();
  }

  double get totalPrice =>
      _items.fold(0, (total, current) => total + current.price);
}
