import 'package:mobyte_scbteamchallenge/utils/models/auth_model.dart';
import 'package:mobyte_scbteamchallenge/utils/models/user_model.dart';

class LogInModel {
  String status;
  final UserModel user;
  final AuthorisationModel authorisation;

  LogInModel(this.status, this.user, this.authorisation);
}
