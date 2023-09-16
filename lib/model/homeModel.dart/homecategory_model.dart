class HomeCategoryModel {
  List<DrugKey>? drugKey;
  String? msg;
  int? status;

  HomeCategoryModel({this.drugKey, this.msg, this.status});

  HomeCategoryModel.fromJson(Map<String, dynamic> json) {
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
    if (this.drugKey != null) {
      data['Drug_key'] = this.drugKey!.map((v) => v.toJson()).toList();
    }
    data['msg'] = this.msg;
    data['status'] = this.status;
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