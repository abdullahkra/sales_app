import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sales/screens/cart_screen.dart';
import 'package:sales/screens/home_screen.dart';

class MyButtomNavigationBar extends StatefulWidget {
  const MyButtomNavigationBar({super.key});

  @override
  State<MyButtomNavigationBar> createState() => _MyButtomNavigationBarState();
}

class _MyButtomNavigationBarState extends State<MyButtomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: const Color.fromRGBO(1, 0, 53, 1),
        activeColor: Colors.white,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: "Cart",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
