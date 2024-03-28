import 'package:flutter/material.dart';
import 'package:sales/models/product.dart';
import 'package:sales/screens/details_page.dart';
import 'package:sales/widgets/grid_view_custom_all_products_page.dart';

class AllProductsScreen extends StatelessWidget {
  final List<ProductModel> products;

  const AllProductsScreen({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Products'),
      ),
      body: GridViewCustomAll(
          products: products,
          onTap: (product) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsScreen(data: product)),
            );
          }),
    );
  }
}
