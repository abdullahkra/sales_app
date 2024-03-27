import 'package:flutter/material.dart';
import 'package:sales/models/product.dart';

class DetailsScreen extends StatefulWidget {
  final ProductModel data;
  const DetailsScreen({super.key, required this.data});

  @override
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
                child: Hero(
                  tag: "${widget.data.image}",
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
                    color: Colors.black26,
                  )
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      textAlign: TextAlign.left,
                      widget.data.title.toString(),
                      style: const TextStyle(
                          color: Color.fromRGBO(1, 0, 53, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
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
/* Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              widget.data.title.toString(),
              style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ), */
/* Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              "Price \$${widget.data.price}",
              style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ), */