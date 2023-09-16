import 'dart:convert';

import 'package:tecdoc/model/pharamcyModel/addpharamcy_model.dart';
import 'package:tecdoc/model/pharamcyModel/pharamcy_Model.dart';
import 'package:http/http.dart' as http;
import 'package:tecdoc/model/pharamcyModel/pharamcyprofile.dart';

class PharamcyAPI {
  Future<List<PharamcyModel>> pharamcyAPI() async {
    const String url = "https://shootingstars.puiux.org/api/pharamcyies";
    var response = await http.get(Uri.parse(url));

    List<PharamcyModel> pharamcymodel = (json.decode(response.body))
        .map<PharamcyModel>((jsonHome) => PharamcyModel.fromJson(jsonHome))
        .toList();

    return pharamcymodel;
  }

  Future<List<PharamcyProfileModel>> pharamcyprofileAPI() async {
    const String url = "https://shootingstars.puiux.org/api/pharmacy/2";
    var response = await http.get(Uri.parse(url));

    List<PharamcyProfileModel> pharamcyprofilemodel =
        (json.decode(response.body))
            .map<PharamcyProfileModel>(
                (jsonHome) => PharamcyProfileModel.fromJson(jsonHome))
            .toList();

    return pharamcyprofilemodel;
  }

  Future addPharamcyAPI(String pharmacyname, String pharmacyaddress,
      String pharamcyimage, String pharamcyphone) async {
    const String url = "https://shootingstars.puiux.org/api/add_pharmacy?pharmacy_name&pharmacy_address";
    var response = await http.post(Uri.parse(url), body: {
      'pharmacy_name': pharmacyname,
      'pharmacy_address': pharmacyaddress,
      'pharmacy_image': pharamcyimage,
      'pharmacy_phone': pharamcyphone,
    },);
    return AddPharamcyModel.fromJson(jsonDecode(response.body));
  }
}
