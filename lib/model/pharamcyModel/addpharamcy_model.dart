class AddPharamcyModel {
  Data? data;
  String? msg;
  int? status;

  AddPharamcyModel({this.data, this.msg, this.status});

  AddPharamcyModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    msg = json['msg'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['msg'] = this.msg;
    data['status'] = this.status;
    return data;
  }
}

class Data {
  String? pharmacyName;
  String? pharmacyAddress;
  String? pharmacyImage;
  String? pharmacyPhone;
  String? updatedAt;
  String? createdAt;
  int? id;

  Data(
      {this.pharmacyName,
      this.pharmacyAddress,
      this.pharmacyImage,
      this.pharmacyPhone,
      this.updatedAt,
      this.createdAt,
      this.id});

  Data.fromJson(Map<String, dynamic> json) {
    pharmacyName = json['pharmacy_name'];
    pharmacyAddress = json['pharmacy_address'];
    pharmacyImage = json['pharmacy_image'];
    pharmacyPhone = json['pharmacy_phone'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pharmacy_name'] = this.pharmacyName;
    data['pharmacy_address'] = this.pharmacyAddress;
    data['pharmacy_image'] = this.pharmacyImage;
    data['pharmacy_phone'] = this.pharmacyPhone;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}