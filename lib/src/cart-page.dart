import 'package:flutter/material.dart';
import '../bloc/cart-bloc-inherited.dart';
import '../bloc/cart-bloc-inherited-provider.dart';

class CartPage extends StatefulWidget {
  static const routeName = '/cart-page';

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    CartBloc cartBloc = CartProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: StreamBuilder(
        stream: cartBloc.cartList,
        builder: (context, snapshot) {
          var sum = 0;
          if (snapshot.hasData) {
            sum =
                snapshot.data.map((item) => item.price).reduce((x, y) => x + y);
          }
          return Center(
            child: Text('Sum : $sum'),
          );
        },
      ),
    );
  }
}
