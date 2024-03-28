import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sales/models/product.dart';

class DetailsScreen extends StatefulWidget {
  final ProductModel data;
  const DetailsScreen({super.key, required this.data});

  @override
  // ignore: library_private_types_in_public_api
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width * 0.12,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 110, 78, 1),
                borderRadius: BorderRadius.all(Radius.circular(17)),
              ),
              child: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
            ),
          )
        ],
        title: const Center(
          child: Text(
            "Product Details",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Mark",
              fontWeight: FontWeight.w900,
              fontSize: 18,
              color: Color.fromRGBO(1, 0, 53, 1),
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height / 2.4,
              width: MediaQuery.sizeOf(context).width * 0.75,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: NetworkImage(
                            "${widget.data.image}",
                          ),
                          fit: BoxFit.fill),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 4,
                            color: Colors.black26)
                      ]),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.46,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 4,
                    color: Colors.black,
                  )
                ],
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      textAlign: TextAlign.left,
                      widget.data.title.toString(),
                      style: const TextStyle(
                          fontFamily: "Mark",
                          color: Color.fromRGBO(1, 0, 53, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 240.0),
                    child: RatingBar(
                      ratingWidget: RatingWidget(
                        full: const Icon(Icons.star,
                            color: Color.fromRGBO(255, 184, 0, 1)),
                        half: const Icon(Icons.star_half),
                        empty: const Icon(Icons.star_border),
                      ),
                      initialRating: widget.data.rating?.rate ?? 0.0,
                      itemSize: 20,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 3),
                      onRatingUpdate: (rating) {
                        setState(() {});
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 100,
                  ),
                  DefaultTabController(
                    initialIndex: 0,
                    length: 3,
                    child: Column(
                      children: [
                        const TabBar(
                          tabs: [
                            Tab(text: 'Shop'),
                            Tab(text: 'Details'),
                            Tab(text: 'Features'),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.15,
                          child: TabBarView(
                            children: [
                              const Center(child: Text('Shop Content')),
                              SingleChildScrollView(
                                  child: Center(
                                      child:
                                          Text('${widget.data.description}'))),
                              const Center(child: Text('Features Content')),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.86,
                    height: MediaQuery.sizeOf(context).height * 0.06,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 110, 78, 1),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Add to Cart",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: "Mark",
                              fontWeight: FontWeight.w900,
                              fontSize: 20),
                        ),
                        Text(
                          "\$${widget.data.price.toString()}",
                          style: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: "Mark",
                              fontWeight: FontWeight.w900,
                              fontSize: 20),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
