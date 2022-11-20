import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mobyte_scbteamchallenge/utils/models/auth_model.dart';
import 'package:mobyte_scbteamchallenge/utils/models/login_model.dart';
import 'package:mobyte_scbteamchallenge/utils/models/role_model.dart';
import 'package:mobyte_scbteamchallenge/utils/models/user_model.dart';

class AuthService {
  final Dio dio = Dio();
  final String url = 'https://mobytescbteamchallenge.herokuapp.com';
  String token = "";

  Future<LogInModel> logIn(String login, String password) async {
    Response response = await dio.post(
      url + '/api/auth/login',
      queryParameters: {"email": login, "password": password},
      options: Options(method: 'POST'),
    );
    var map = jsonDecode(response.toString());
    String status = map['status'];
    var user = map['user'];
    var role = user['role'];
    RoleModel roleModel = RoleModel(role['id'], role['title'], role['const']);
    UserModel userModel = UserModel(
      id: user['id'],
      name: user['name'],
      phone: user['phone'],
      email: user['email'],
      registrationDate: user['created_at'],
      updateDate: user['updated_at'],
      role: roleModel,
    );
    var auth = map['authorisation'];
    token = auth['token'];
    AuthorisationModel authorisationModel =
        AuthorisationModel(auth['token'], auth['type']);
    return LogInModel(status, userModel, authorisationModel);
  }
}
