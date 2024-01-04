import 'package:flutter/material.dart';
import './src/login-screen.dart';
import './src/catalog-page.dart';
import './src/cart-page.dart';
import './bloc/cart-bloc-inherited-provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CartProvider(
      child: MaterialApp(
        title: 'flutter cart applicaton',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: LoginScreen(),
        routes: {
          LoginScreen.routeName: (context) => LoginScreen(),
          CatalogPage.routeName: (context) => CatalogPage(),
          CartPage.routeName: (context) => CartPage(),
        },
      )
    );
  }
}