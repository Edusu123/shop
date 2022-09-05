import 'package:shop/pages/products_overview_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
          primarySwatch: Colors.purple,
        ),
        home: ProductsOverviewPage());
  }
}
