import 'package:flutter_cart_bloc/item.dart';
import 'package:rxdart/rxdart.dart';

enum CartEventType { add, remove }

class CartEvent {
  final CartEventType type;
  final Item item;

  CartEvent(this.type, this.item);
}

class CartBloc {
  final itemList = [
    Item("맥북1", 2000000),
    Item("맥북2", 3000),
    Item("맥북3", 402000),
    Item("맥북4", 5005000),
    Item("맥북5", 600000),
  ];

  final _cartList = List<Item>();

  final _cartListSubject = BehaviorSubject<List<Item>>.seeded([]);

  Stream<List<Item>> get cartList => _cartListSubject.stream;

  void add(CartEvent event){
    switch(event.type){
      case CartEventType.remove:
        _cartList.remove(event.item);
        break;
      case CartEventType.add:
        _cartList.add(event.item);
        break;
    }
    _cartListSubject.add(_cartList);
  }
}
