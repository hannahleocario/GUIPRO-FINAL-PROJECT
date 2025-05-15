import 'package:flutter/material.dart';
import '../manager/cart_manager.dart';  // import cart manager

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {
    final cartItems = CartManager().items;
    double total = CartManager().totalPrice;

    return Scaffold(
      appBar: AppBar(title: Text('Your Cart')),
      body: Column(
        children: [
          Expanded(
            child: cartItems.isEmpty
                ? Center(child: Text('Your cart is empty'))
                : ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final item = cartItems[index];
                      return ListTile(
                        leading: Image.asset(item.image, width: 50, height: 50),
                        title: Text(item.name),
                        trailing: Text('\$${item.price.toStringAsFixed(2)}'),
                      );
                    },
                  ),
          ),
          if (cartItems.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text('Total: \$${total.toStringAsFixed(2)}'),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/checkout');
                    },
                    child: Text('Proceed to Checkout'),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
