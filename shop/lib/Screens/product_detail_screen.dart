import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ProductDetailScreen extends StatelessWidget {
 //final String titile;
static const routeName='/product-detail';

// ProductDetailScreen(this.titile);

 @override
  Widget build(BuildContext context) {
   final productId=ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title:  Text('title',style:GoogleFonts.greatVibes(
            fontWeight: FontWeight.bold,
            fontSize: 25
        ),),
      ),
    );
  }
}
