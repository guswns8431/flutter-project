import 'package:flutter/material.dart';
import 'package:flutter_cart_bloc_v4/bloc/cart-bloc-inherited.dart';
import '../bloc/cart-bloc-inherited-provider.dart';
import '../src/cart-page.dart';
import '../model/item.dart';

class CatalogPage extends StatefulWidget {
  static const routeName = '/catalog-page';

  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  Widget _buildListItem(Item item, List<Item> list, CartBloc cartBloc) {
    final isChecked = list == null ? false : list.contains(item);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          item.title,
          style: TextStyle(fontSize: 32.0),
        ),
        subtitle: Text('${item.price}'),
        trailing: IconButton(
          icon: Icon(Icons.check, color: isChecked ? Colors.red : Colors.grey),
          onPressed: (){
            if(isChecked){
              cartBloc.add(
                CartEvent(eventType: CartEventType.remove, item: item),
              );
            } else {
              cartBloc.add(
                CartEvent(eventType: CartEventType.add, item: item),
              );
            }
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    CartBloc cartBloc = CartProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(CartPage.routeName);
            },
            icon: Icon(Icons.archive),
          )
        ],
      ),
      body: StreamBuilder<List<Item>>(
        stream: cartBloc.cartList,
        builder: (context,snapshot){
          return Center(
            child:ListView(
              children: cartBloc.itemList.map((item) => _buildListItem(item, snapshot.data, cartBloc)).toList(),
            )
          );
        },
      ),
    );
  }
}
