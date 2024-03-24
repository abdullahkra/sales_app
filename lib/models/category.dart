class CategoryModel {
  String? name;

  CategoryModel({this.name});

  factory CategoryModel.fromJson(String json) {
    return CategoryModel(name: json);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}
