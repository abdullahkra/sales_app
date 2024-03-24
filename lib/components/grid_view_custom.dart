import 'package:flutter/material.dart';
import 'package:sales/models/product.dart';
import 'package:sales/screens/details_page.dart';

class GridViewCustom extends StatelessWidget {
  const GridViewCustom(
      {super.key,
      required List<ProductModel> products,
      required Null Function(dynamic product) onTap});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const DetailsPage(
                        product: null,
                      )));
        },
      ),
    );
  }
}
