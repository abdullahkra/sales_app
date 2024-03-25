// ignore_for_file: unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/models/category.dart';
import 'package:sales/models/product.dart';
import 'package:sales/screens/search_screen.dart';
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
    products = await ProductService.getProductData();
    setState(() {});
  }

  void _getCategoryData() async {
    categories = await CategoryService.getCategoryData();
    setState(() {});
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
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(167, 171, 201, 0.15),
                            shape: BoxShape.circle),
                        child: const Center(child: Text('Resim')),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        categories[index].name.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: "Mark",
                            fontSize: 12,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBar(
              leading: const Icon(Icons.search),
              hintText: "Search",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPage()),
                );
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 4.6,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: PageView(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        "assets/images/iphoneFoto.png",
                      ),
                      const Positioned(
                        top: 48,
                        left: 30,
                        child: Text(
                          "Iphone 12",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Maven",
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 80,
                        left: 30,
                        child: Text(
                          "Súper. Mega. Rápido.",
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 30,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Buy now!",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 15,
                        left: 30,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color.fromRGBO(255, 110, 78, 1),
                          child: Text(
                            "New",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: "Maven",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        "assets/images/iphoneFoto.png",
                      ),
                      const Positioned(
                        top: 48,
                        left: 30,
                        child: Text(
                          "Iphone 12",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Maven",
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 80,
                        left: 30,
                        child: Text(
                          "Súper. Mega. Rápido.",
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 30,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Buy now!",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 15,
                        left: 30,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color.fromRGBO(255, 110, 78, 1),
                          child: Text(
                            "New",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: "Maven",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        "assets/images/iphoneFoto.png",
                      ),
                      const Positioned(
                        top: 48,
                        left: 30,
                        child: Text(
                          "Iphone 12",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Maven",
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 80,
                        left: 30,
                        child: Text(
                          "Súper. Mega. Rápido.",
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 30,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Buy now!",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 15,
                        left: 30,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color.fromRGBO(255, 110, 78, 1),
                          child: Text(
                            "New",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: "Maven",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
