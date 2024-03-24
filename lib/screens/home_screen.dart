import 'package:flutter/material.dart';
import 'package:sales/models/category.dart';
import 'package:sales/models/product.dart';
import 'package:sales/services/category_service.dart';
import 'package:sales/services/product_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductModel> _products = [];
  List<CategoryModel> _categories=[];
  void _getProductsData()async{
    setState(() {
      
    });
    _products = await ProductService.getProductData();
  }
  void _getCategoryData()async{
    setState(() {
      
    });
    _categories = await CategoryService.getCategoryData();
  }
  @override
  void initState() {
    _getProductsData();
    _getCategoryData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}