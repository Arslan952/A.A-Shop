import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/Widget/product_item.dart';

import '../model/product.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProduct = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(
          child: Text('A.A Shop',style:GoogleFonts.greatVibes(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProduct.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) => ProductItem(loadedProduct[index].id,
            loadedProduct[index].title, loadedProduct[index].imageUrl),
      ),
    );
  }
}
