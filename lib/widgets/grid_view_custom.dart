// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:sales/models/product.dart';
import 'package:sales/screens/details_page.dart';
import 'package:sales/widgets/product_card.dart';

class GridViewCustom extends StatelessWidget {
  const GridViewCustom({
    super.key,
    required this.products,
    required this.onTap,
  });

  final List<ProductModel> products;
  final void Function(ProductModel product) onTap;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.55,
      ),
      itemCount: products.length >= 4 ? 4 : products.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          onTap(products[index]);
        },
        child: Container(
          child: ProductCard(product: products[index]),
        ),
      ),
    );
  }
}
