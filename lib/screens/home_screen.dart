import 'package:flutter/material.dart';
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
        body: Column(children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return CategoryCard(category: categories[index]);
            },
          ),
        ]));
  }
}
