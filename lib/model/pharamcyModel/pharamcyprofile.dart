class PharamcyProfileModel {
  Data? data;
  String? msg;

  PharamcyProfileModel({this.data, this.msg});

  PharamcyProfileModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['msg'] = this.msg;
    return data;
  }
}

class Data {
  int? id;
  String? pharmacyName;
  String? pharmacyAddress;
  String? pharmacyImage;
  int? pharmacyPhone;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.pharmacyName,
      this.pharmacyAddress,
      this.pharmacyImage,
      this.pharmacyPhone,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pharmacyName = json['pharmacy_name'];
    pharmacyAddress = json['pharmacy_address'];
    pharmacyImage = json['pharmacy_image'];
    pharmacyPhone = json['pharmacy_phone'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['pharmacy_name'] = this.pharmacyName;
    data['pharmacy_address'] = this.pharmacyAddress;
    data['pharmacy_image'] = this.pharmacyImage;
    data['pharmacy_phone'] = this.pharmacyPhone;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}