import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems = [
    {'name': 'Handmade Mug', 'price': 12.99, 'qty': 1},
    {'name': 'Clay Pot', 'price': 19.99, 'qty': 2},
  ];

  @override
  Widget build(BuildContext context) {
    double total =
        cartItems.fold(0, (sum, item) => sum + item['price'] * item['qty']);

    return Scaffold(
      appBar: AppBar(title: Text("Shopping Cart")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (ctx, index) => ListTile(
                title: Text(cartItems[index]['name']),
                subtitle: Text('Qty: ${cartItems[index]['qty']}'),
                trailing: Text(
                    '\$${(cartItems[index]['price'] * cartItems[index]['qty']).toStringAsFixed(2)}'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('\$${total.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/checkout'),
                  child: Text("Proceed to Checkout"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}