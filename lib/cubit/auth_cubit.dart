import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:mobyte_scbteamchallenge/di/app_module.dart';
import 'package:mobyte_scbteamchallenge/domain/auth_service.dart';
import 'package:mobyte_scbteamchallenge/utils/models/auth_model.dart';
import 'package:mobyte_scbteamchallenge/utils/models/login_model.dart';
import 'package:mobyte_scbteamchallenge/utils/models/role_model.dart';
import 'package:mobyte_scbteamchallenge/utils/models/user_model.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthService authService;

  AuthCubit(this.authService) : super(AuthInitial());

  Future<void> login(String login, String password) async {
    LogInModel loginModel = LogInModel(
        "error",
        UserModel(
            id: 0,
            name: "name",
            phone: "0",
            email: "email",
            registrationDate: "",
            updateDate: "",
            role: RoleModel(0, "", "")),
        AuthorisationModel("", ""));
    try {
      loginModel = await authService.logIn(login, password);
    } on DioError catch (e) {
      loginModel.status = "error";
    }
    if (loginModel.status == 'success') {
      emit(AuthSuccess());
    } else if (loginModel.status == 'error') {
      emit(AuthError());
    } else {
      emit(AuthInProgress());
    }
  }
}
