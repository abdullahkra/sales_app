import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sales/models/product.dart';


class ProductService {
  static const String apiUrl = 'https://fakestoreapi.com/products'; 

  static Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      return list.map((model) => Product.fromJson(model)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }

  static fetchProductsByCategory(String categoryName) {}
}
