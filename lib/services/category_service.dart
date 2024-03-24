import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sales/models/category.dart';


class CategoryService {
  static const String apiUrl = 'https://fakestoreapi.com/products/categories'; 

  static Future<List<Category>> fetchCategories() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      return list.map((model) => Category.fromJson(model)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
