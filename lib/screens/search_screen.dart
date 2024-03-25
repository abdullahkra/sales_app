// search_page.dart

import 'package:flutter/material.dart';
import 'package:sales/models/product.dart';
import 'package:sales/services/product_service.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late List<ProductModel> allProducts;
  late List<ProductModel> filteredProducts;

  @override
  void initState() {
    super.initState();
    allProducts = [];
    filteredProducts = [];
    _loadProducts();
  }

  void _loadProducts() async {
    allProducts = await ProductService.getProductData();
    filteredProducts = List.from(allProducts);
  }

  void _filterProducts(String query) {
    setState(() {
      filteredProducts = allProducts.where((product) {
        return product.title!.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: _filterProducts,
          decoration: const InputDecoration(
            hintText: 'Search...',
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filteredProducts.length,
        itemBuilder: (context, index) {
          var product = filteredProducts[index];
          return ListTile(
            title: Text(product.title!),
            subtitle: Text(product.description!),
            // Diğer ürün bilgileri buraya eklenebilir
          );
        },
      ),
    );
  }
}
