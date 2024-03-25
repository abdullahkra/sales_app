// search_bar.dart

import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const SearchBar({Key? key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 10),
            Text(
              'Search...',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
