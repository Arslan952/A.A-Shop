import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/Widget/product_item.dart';

import '../Widget/product_grid.dart';
import '../providers/product.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProduct = [

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
      body:ProductGrid()
    );
  }
}
