import 'package:rxdart/rxdart.dart';
import '../model/item.dart';

enum CartEventType{
  add,
  remove,
}

class CartEvent{
  final CartEventType eventType;
  final Item item;

  CartEvent({this.eventType, this.item});
}

class CartBloc{
  final itemList = [
    Item(title: 'iMac', price: 123412313),
    Item(title: 'iPhone', price: 123124),
    Item(title: 'iPad',price: 131245),
    Item(title: 'AirPods', price: 1259129),
    Item(title: 'MacBook', price: 2130150),
  ];

  final _cartList = List<Item>();
  final _cartListSubject = BehaviorSubject<List<Item>>();

  Stream<List<Item>> get cartList => _cartListSubject.stream;

  void add(CartEvent event) {
    if(event.eventType == CartEventType.add){
      _cartList.add(event.item);
    } else {
      _cartList.remove(event.item);
    }
    _cartListSubject.add(_cartList);
  }

  void dispose(){
    _cartListSubject.close();
  }
}