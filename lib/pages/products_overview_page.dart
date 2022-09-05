import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';
import 'package:shop/components/product_item.dart';

class ProductsOverviewPage extends StatelessWidget {
  final List<Product> loadedProducts = dummyProducts;

  ProductsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Minha Loja')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3 / 2,
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => ProductItem(product: loadedProducts[i]),
        itemCount: loadedProducts.length,
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}
