import 'package:flutter/material.dart';
import 'package:sales/components/product_card.dart';
import 'package:sales/screens/details_page.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.7,
        ////////////////////////////////////////
      ),
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DetailsPage()));
        },
      ),
    );
  }
}
