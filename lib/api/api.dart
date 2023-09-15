import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tecdoc/model/user_model.dart';

class UserAPI {
  Future signupAPI(
      String name, String email, String password, String phone) async {
    const String url = "https://shootingstars.puiux.org/api/register";
    var response = await http.post(Uri.parse(url), body: {
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
    }, headers: {
      "Accept": "application/json"
    });
    // print("=================================");
    // print(jsonDecode(response.body));
    // print("========================================");
    return SignupModel.fromJson(jsonDecode(response.body));
  }
}
