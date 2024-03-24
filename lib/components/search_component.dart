import 'package:flutter/material.dart';
import 'package:sales/models/product.dart'; // Ürün modeli burada kullanılıyor, projenize göre uygun şekilde düzenleyin

class SearchComponent extends StatefulWidget {
  final Function(String) onSearch; // Arama fonksiyonu

  const SearchComponent({super.key, required this.onSearch});

  @override
  _SearchComponentState createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
            suffixIcon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                String searchTerm = _searchController.text.trim();
                if (searchTerm.isNotEmpty) {
                  widget.onSearch(searchTerm);
                }
              },
            ),
          ),
        ),
        const SizedBox(
            height: 16), // Arama kutusu ile sonraki bileşen arasında boşluk
        // Arama sonuçlarını gösterecek widget buraya eklenebilir
        // Örneğin, SearchResultList kullanılabilir
        const Expanded(
          child: SearchResultList(
            products: [], // Burada arama sonuçları listesi verilmelidir
          ),
        ),
      ],
    );
  }
}

class SearchResultList extends StatelessWidget {
  final List<Product> products;

  const SearchResultList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(products[index].title ?? ''),
          subtitle: Text(products[index].description ?? ''),
          trailing: Text('\$${products[index].price.toString()}'),
          onTap: () {
            // Ürün detay sayfasına gitmek için gerekli işlemler buraya yazılabilir
          },
        );
      },
    );
  }
}
