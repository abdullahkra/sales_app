import 'package:flutter/material.dart';
import 'package:sales/components/product_card.dart';
import 'package:sales/models/product.dart';

//sdadsa
void main() {
  runApp(const Sale());
}

class Sale extends StatefulWidget {
  const Sale({super.key});

  @override
  State<Sale> createState() => _SaleState();
}

class _SaleState extends State<Sale> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ProductCard(
          product: Product(category: ""),
        ),
      ),
    );
  }
}
