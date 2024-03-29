import 'package:flutter/material.dart';
import 'package:sales/screens/home_screen.dart';
import 'package:sales/utils/my_buttom_navigation_bar.dart';

//sdadsa
void main() {
  runApp(const Sale());
}

class Sale extends StatelessWidget {
  const Sale({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBottomNavigationBar(
        
      ),
      
    );
  }
}
