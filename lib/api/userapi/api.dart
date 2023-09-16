import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tecdoc/model/userModel/forpass_model.dart';
import 'package:tecdoc/model/userModel/resetpass_model.dart';
import 'package:tecdoc/model/userModel/signin_model.dart';
import 'package:tecdoc/model/userModel/user_model.dart';

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
    return SignupModel.fromJson(jsonDecode(response.body));
  }

  Future signinAPI(String email, String password) async {
    const String url = "https://shootingstars.puiux.org/api/login";
    var response = await http.post(Uri.parse(url), body: {
      'email': email,
      'password': password,
    }, headers: {
      "Accept": "application/json"
    });
    return SigninModel.fromJson(jsonDecode(response.body));
  }

  Future forgetPassAPI(String email) async {
    const String url = "https://shootingstars.puiux.org/api/forgot-password";
    var response = await http.post(Uri.parse(url), body: {
      'email': email,
    }, headers: {
      "Accept": "application/json"
    });
    return ForgetPassModel.fromJson(jsonDecode(response.body));
  }

   Future resetPassAPI(String email,String password,String passConf,String token) async {
    const String url = "https://shootingstars.puiux.org/api/reset-password";
    var response = await http.post(Uri.parse(url), body: {
      'email': email,
      'token': token,
      'password': password,
      'password_confirmation': passConf,
    }, headers: {
      "Accept": "application/json"
    });
    return ResetPassModel.fromJson(jsonDecode(response.body));
  }
}
