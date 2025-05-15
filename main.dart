import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/product_detail_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/checkout_screen.dart';
import 'screens/order_confirmation_screen.dart';

void main() => runApp(MWLStoreApp());

class MWLStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MWL Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Montserrat',
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => SplashScreen(),
        '/home': (ctx) => HomeScreen(),
        '/product-detail': (ctx) => ProductDetailScreen(),
        '/cart': (ctx) => CartScreen(),
        '/checkout': (ctx) => CheckoutScreen(),
        '/order-confirmation': (ctx) => OrderConfirmationScreen(),
      },
    );
  }
}