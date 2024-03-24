class Category {
  String? name;

  Category({this.name});

  factory Category.fromJson(String json) {
    return Category(name: json);
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}
