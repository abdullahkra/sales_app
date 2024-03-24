import 'package:flutter/material.dart';
import 'package:sales/components/product_card.dart';
import 'package:sales/models/product.dart';
import 'package:sales/screens/home_screen.dart';

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
    return const MaterialApp(home: HomePage());
  }
}
