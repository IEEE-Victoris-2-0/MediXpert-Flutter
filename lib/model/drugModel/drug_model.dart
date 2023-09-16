class DrugModel {
  DrugModel({
     this.data,
    required this.msg,
    required this.status,
  });
  late final Null data;
  late final String msg;
  late final int status;
  
  DrugModel.fromJson(Map<String, dynamic> json){
    data = null;
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