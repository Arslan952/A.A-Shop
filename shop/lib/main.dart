import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/Screens/product_detail_screen.dart';
import 'package:shop/Screens/product_overview_screen.dart';
import 'package:shop/providers/products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Colors.white70
        ),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName:(context)=>ProductDetailScreen()

        },
      ),
    );
  }
}


