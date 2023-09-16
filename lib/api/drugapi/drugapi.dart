import 'package:http/http.dart' as http;
import 'package:tecdoc/model/drugModel/drug_model.dart';
import 'dart:convert';

import 'package:tecdoc/model/drugModel/drugs_model.dart';

class DrugAPI {

  Future<List<DrugsModel>> drugsAPI() async {
    const String url = "https://shootingstars.puiux.org/api/drugs";
    var response = await http.get(Uri.parse(url));

    List<DrugsModel> drugsmodel =(json.decode(response.body))
        .map<DrugsModel>((jsonHome) => DrugsModel.fromJson(jsonHome))
        .toList();

      return drugsmodel;
  } 

  Future<List<DrugModel>> drugAPI() async {
    const String url = "https://shootingstars.puiux.org/api/drug/2";
    var response = await http.get(Uri.parse(url));

    List<DrugModel> drugmodel =(json.decode(response.body))
        .map<DrugModel>((jsonHome) => DrugModel.fromJson(jsonHome))
        .toList();

      return drugmodel;
  } 
}