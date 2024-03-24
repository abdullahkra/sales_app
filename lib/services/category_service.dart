import 'package:dio/dio.dart';
import 'package:sales/models/category.dart';

class CategoryService {
  static const String url = 'https://fakestoreapi.com/products/categories';

  static Future<List<CategoryModel>> getCategoryData() async {
    try {
      final dio = Dio();
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        final List list = response.data;
        List<CategoryModel> categoryList =
            list.map((e) => CategoryModel.fromJson(e)).toList();
        return categoryList;
      } else {
        throw Exception('Error: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }
}
