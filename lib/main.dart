import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:flutter/material.dart';
import 'package:shop/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductsOverviewPage(),
        routes: {AppRoutes.PRODUCT_DETAIL: (ctx) => const ProductDetailPage()},
        title: 'Flutter Demo',
        theme: ThemeData(
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
          primarySwatch: Colors.purple,
        ));
  }
}
