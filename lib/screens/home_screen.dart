import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/models/category.dart';
import 'package:sales/models/product.dart';
import 'package:sales/services/category_service.dart';
import 'package:sales/services/product_service.dart';
import 'package:sales/widgets/category_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductModel> products = [];
  List<CategoryModel> categories = [];
  void _getProductsData() async {
    setState(() {});
    products = await ProductService.getProductData();
  }

  void _getCategoryData() async {
    setState(() {});
    categories = await CategoryService.getCategoryData();
  }

  @override
  void initState() {
    _getProductsData();
    _getCategoryData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Select Category",
          style: TextStyle(
              fontFamily: "Mark",
              fontWeight: FontWeight.w700,
              fontSize: 25,
              color: Color.fromRGBO(1, 0, 53, 1)),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "view all",
              style: TextStyle(
                  color: Color.fromRGBO(2255, 110, 78, 1),
                  fontFamily: "Mark",
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 71,
                        decoration: const BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                        child: const Center(child: Text('Resim')),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        categories[index].name.toString(),
                        textAlign: TextAlign.center,
                        style:
                            const TextStyle(fontFamily: "Mark", fontSize: 12),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
