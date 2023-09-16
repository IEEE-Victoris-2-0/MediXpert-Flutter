class HomeModel {
  List<CategoryKey>? categoryKey;
  List<DrugKey>? drugKey;
  String? msg;
  int? status;

  HomeModel({this.categoryKey, this.drugKey, this.msg, this.status});

  HomeModel.fromJson(Map<String, dynamic> json) {
    if (json['category_key'] != null) {
      categoryKey = <CategoryKey>[];
      json['category_key'].forEach((v) {
        categoryKey!.add(new CategoryKey.fromJson(v));
      });
    }
    if (json['Drug_key'] != null) {
      drugKey = <DrugKey>[];
      json['Drug_key'].forEach((v) {
        drugKey!.add(new DrugKey.fromJson(v));
      });
    }
    msg = json['msg'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categoryKey != null) {
      data['category_key'] = this.categoryKey!.map((v) => v.toJson()).toList();
    }
    if (this.drugKey != null) {
      data['Drug_key'] = this.drugKey!.map((v) => v.toJson()).toList();
    }
    data['msg'] = this.msg;
    data['status'] = this.status;
    return data;
  }
}

class CategoryKey {
  int? id;
  String? categoryName;
  Null? slug;
  String? image;

  CategoryKey({this.id, this.categoryName, this.slug, this.image});

  CategoryKey.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['category_name'];
    slug = json['slug'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_name'] = this.categoryName;
    data['slug'] = this.slug;
    data['image'] = this.image;
    return data;
  }
}

class DrugKey {
  String? drugname;
  String? description;
  String? drugImage;
  String? itemPrice;
  int? qty;
  int? categoryId;

  DrugKey(
      {this.drugname,
      this.description,
      this.drugImage,
      this.itemPrice,
      this.qty,
      this.categoryId});

  DrugKey.fromJson(Map<String, dynamic> json) {
    drugname = json['drugname'];
    description = json['description'];
    drugImage = json['drug_image'];
    itemPrice = json['item_price'];
    qty = json['qty'];
    categoryId = json['category_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['drugname'] = this.drugname;
    data['description'] = this.description;
    data['drug_image'] = this.drugImage;
    data['item_price'] = this.itemPrice;
    data['qty'] = this.qty;
    data['category_id'] = this.categoryId;
    return data;
  }
}