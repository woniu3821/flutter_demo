import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:hello_word/views/Provider.dart';

import 'package:hello_word/views/Consumer.dart';

class Item {
  Item(this.price, this.count);
  double price;
  int count;
}

class CartModel extends ChangeNotifiers {
  final List<Item> _items = [];

  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  double get totalPrice =>
      _items.fold(0, (value, item) => value + item.count * item.price);

  void add(Item item) {
    _items.add(item);
    notifyListeners();
  }
}

class ProviderRoute extends StatefulWidget {
  ProviderRoute({Key key}) : super(key: key);

  _ProviderRouteState createState() => _ProviderRouteState();
}

class _ProviderRouteState extends State<ProviderRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('跨组件共享状态（Provider）'),
      ),
      body: Center(
        child: ChangeNotifiersProvider<CartModel>(
          data: CartModel(),
          child: Builder(
            builder: (context) {
              return Column(
                children: <Widget>[
                  Consumer<CartModel>(
                    builder: (BuildContext context, cart) =>
                        Text("总价: ${cart.totalPrice}"),
                  ),
                  Builder(
                    builder: (context) {
                      print("RaiseButton build");
                      return RaisedButton(
                        child: Text("添加商品"),
                        onPressed: () {
                          ChangeNotifiersProvider.of<CartModel>(context,
                                  listen: false)
                              .add(Item(20.0, 1));
                        },
                      );
                    },
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
