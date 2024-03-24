import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  final List<Widget> pages;
  const CustomPageView({super.key, required this.pages});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: pages,
    );
  }
}
