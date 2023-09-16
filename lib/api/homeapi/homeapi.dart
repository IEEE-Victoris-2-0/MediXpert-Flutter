import 'dart:convert';

import 'package:tecdoc/model/homeModel.dart/home_model.dart';
import 'package:http/http.dart' as http;
import 'package:tecdoc/model/homeModel.dart/homecategory_model.dart';

class HomeAPI {
  Future<List<HomeModel>> homeAPI() async {
    const String url = "https://shootingstars.puiux.org/api/home";
    var response = await http.get(Uri.parse(url));

    List<HomeModel> homemodel =(json.decode(response.body))
        .map<HomeModel>((jsonHome) => HomeModel.fromJson(jsonHome))
        .toList();

      return homemodel;
  }

  Future<List<HomeCategoryModel>> homeCategoryAPI() async {
    const String url = "https://shootingstars.puiux.org/api/drug_by_categ/1";
    var response = await http.get(Uri.parse(url));

    List<HomeCategoryModel> homecategorymodel =(json.decode(response.body))
        .map<HomeCategoryModel>((jsonHomeCategory) => HomeCategoryModel.fromJson(jsonHomeCategory))
        .toList();

      return homecategorymodel;
  }
}
