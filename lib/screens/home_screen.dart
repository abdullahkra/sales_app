import 'package:flutter/material.dart';
import 'package:sales/components/category_card.dart';
import 'package:sales/models/category.dart';
import 'package:sales/services/category_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Category> _categories;
  late bool _isLoading;

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    _categories = [];
    _fetchCategories();
  }

  Future<void> _fetchCategories() async {
    try {
      final categories = await CategoryService.fetchCategories();
      setState(() {
        _categories = categories;
        _isLoading = false;
      });
    } catch (error) {
      debugPrint('Error fetching categories: $error');
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Category'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _categories.length,
              itemBuilder: (BuildContext context, int index) {
                final Category category = _categories[index];
                return CategoryCard(
                  category: category,
                  onTap: () {
                    // Kategoriye tıklandığında yapılacak işlemler
                  },
                );
              },
            ),
    );
  }
}
