import 'package:dio/dio.dart';
import 'package:sales/models/product.dart';

class ProductService {
  static const String url = 'https://fakestoreapi.com/products';

  static Future<List<ProductModel>> getProductData() async {
    try {
      final dio = Dio();
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        final List list = response.data;
        final List<ProductModel> productList =
            list.map((e) => ProductModel.fromJson(e)).toList();
        return productList;
      } else {
        throw Exception("Error: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }
}











/* class ProductService {
  static const String url = 'https://fakestoreapi.com/products'; 

  static Future<List<Product>> getProductData() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      return list.map((model) => Product.fromJson(model)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }

  static fetchProductsByCategory(String categoryName) {}
} */

