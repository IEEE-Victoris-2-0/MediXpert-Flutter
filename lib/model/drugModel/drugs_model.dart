class DrugsModel {
  DrugsModel({
    required this.data,
    required this.msg,
    required this.status,
  });
  late final List<dynamic> data;
  late final String msg;
  late final int status;
  
  DrugsModel.fromJson(Map<String, dynamic> json){
    data = List.castFrom<dynamic, dynamic>(json['data']);
    msg = json['msg'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data;
    _data['msg'] = msg;
    _data['status'] = status;
    return _data;
  }
}