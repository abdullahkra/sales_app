import 'package:flutter/material.dart';
import 'package:sales/models/category.dart';

class CategoryCard extends StatefulWidget {
  final CategoryModel category;
  const CategoryCard({super.key, required this.category});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.category.name.toString()),
          ],
        ),
      ),
    );
  }
}
