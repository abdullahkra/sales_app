import 'package:flutter/material.dart';
import 'package:sales/models/category.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;
  const CategoryCard(
      {super.key, required this.category, required Null Function() onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [Text(category.name.toString())],
      ),
    );
  }
}
