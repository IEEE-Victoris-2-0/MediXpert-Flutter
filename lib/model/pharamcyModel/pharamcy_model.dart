class PharamcyModel {
  List<Data>? data;
  String? msg;
  int? status;

  PharamcyModel({this.data, this.msg, this.status});

  PharamcyModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    msg = json['msg'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
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

  Data(
      {this.pharmacyName,
      this.pharmacyAddress,
      this.pharmacyImage,
      this.pharmacyPhone});

  Data.fromJson(Map<String, dynamic> json) {
    pharmacyName = json['pharmacy_name'];
    pharmacyAddress = json['pharmacy_address'];
    pharmacyImage = json['pharmacy_image'];
    pharmacyPhone = json['pharmacy_phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pharmacy_name'] = this.pharmacyName;
    data['pharmacy_address'] = this.pharmacyAddress;
    data['pharmacy_image'] = this.pharmacyImage;
    data['pharmacy_phone'] = this.pharmacyPhone;
    return data;
  }
}