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













