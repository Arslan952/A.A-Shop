import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/Screens/product_detail_screen.dart';
import 'package:shop/providers/product.dart';

class ProductItem extends StatelessWidget {
  //final String id;
  //final String title;
  //final String imageUrl;

 // ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final product=Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,arguments: product.id);
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
          backgroundColor: Colors.black54,
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
