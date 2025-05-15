import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String>? product =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>?;

    if (product == null) {
      return Scaffold(
        appBar: AppBar(title: Text("Product Details")),
        body: Center(child: Text("No product selected.")),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text("Product Details")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(product['image'] ?? '', height: 250),
            SizedBox(height: 16),
            Text(
              product['name'] ?? '',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              '\$${product['price']}',
              style: TextStyle(fontSize: 20, color: Colors.teal),
            ),
            SizedBox(height: 16),
            Text('Description',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(
                'A beautifully crafted handmade item. Perfect for your unique needs.'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/cart'),
              child: Text("Add to Cart"),
            ),
          ],
        ),
      ),
    );
  }
}