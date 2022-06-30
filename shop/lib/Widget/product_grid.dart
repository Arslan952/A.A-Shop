import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/Widget/product_item.dart';

import '../model/product.dart';
import '../providers/products.dart';
class ProductGrid extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final productdata=Provider.of<Products>(context);
    final products=productdata.item;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (context, index) => ProductItem(products[index].id,
          products[index].title, products[index].imageUrl),
    );
  }
}
