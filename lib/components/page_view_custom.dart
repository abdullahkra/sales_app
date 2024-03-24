import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        // İlk sayfa: Kategori kartları
        Container(
          color: Colors.blue,
          child: const Center(
            child: Text(
              'Kategori Kartları',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
        // İkinci sayfa: Ürün listesi
        Container(
          color: Colors.green,
          child: const Center(
            child: Text(
              'Ürün Listesi',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
        // Üçüncü sayfa: Statik görseller
        Container(
          color: Colors.orange,
          child: const Center(
            child: Text(
              'Statik Görseller',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
