import 'package:flutter/cupertino.dart';

import 'product.dart';

class Products with ChangeNotifier {
  final List<Product> _item = [
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'A red shirt- It\'s Pretty Red',
        price: 29.99,
        imageUrl:
        'https://cdn.pixabay.com/photo/2013/07/13/14/08/apparel-162192_960_720.png'),
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'A red shirt- It\'s Pretty Red',
        price: 29.99,
        imageUrl:
        'https://cdn.pixabay.com/photo/2013/07/13/11/32/pants-158358_960_720.png'),
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'A red shirt- It\'s Pretty Red',
        price: 29.99,
        imageUrl:
        'https://media.istockphoto.com/vectors/vector-illustration-of-sport-jacket-vector-id1043124834'),
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'A red shirt- It\'s Pretty Red',
        price: 29.99,
        imageUrl:
        'https://cdn.pixabay.com/photo/2013/07/13/14/08/apparel-162192_960_720.png'),
  ];

  List<Product> get item {
    return [..._item];
  }
  Product findById(String id)
  {
    return _item.firstWhere((element) => element.id==id);
  }

  void addProduct() {
    // -item.add(value);
    notifyListeners();
  }
}
