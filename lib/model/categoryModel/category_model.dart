class CategoryModel {
  CategoryModel({
    required this.data,
    required this.msg,
    required this.status,
  });
  late final List<Data> data;
  late final String msg;
  late final int status;
  
  CategoryModel.fromJson(Map<String, dynamic> json){
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
    msg = json['msg'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e)=>e.toJson()).toList();
    _data['msg'] = msg;
    _data['status'] = status;
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.categoryName,
     this.slug,
    required this.image,
  });
  late final int id;
  late final String categoryName;
  late final Null slug;
  late final String image;
  
  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    categoryName = json['category_name'];
    slug = null;
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['category_name'] = categoryName;
    _data['slug'] = slug;
    _data['image'] = image;
    return _data;
  }
}