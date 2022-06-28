import 'package:flutter/cupertino.dart';

class Products with ChangeNotifier{
  List<Products> _item =[

  ];

  List<Products> get item {
    return [..._item];
  }
  void addProduct()
  {
   // -item.add(value);
    notifyListeners();
  }
}