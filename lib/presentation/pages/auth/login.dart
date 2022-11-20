import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/cubit/auth_cubit.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/auth/phone_num_reset_password.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/auth/signup.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/button.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/castom_textfield.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/custom_appbar.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.white,
        appBar: CustomAppBar(
          context.colors.white,
          "",
          context.colors.black,
          height: height / 15,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height / 10),
              Row(
                children: [
                  SizedBox(width: width / 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Добро пожаловать!',
                        style: TextStyle(
                            color: context.colors.black,
                            fontSize: 26.sp,
                            fontFamily: 'Gilroy_Bold'),
                      ),
                      SizedBox(height: height / 20),
                      Customtextfild.textField(
                        labletext: 'Адрес электронной почты',
                        focuscolor: context.colors.blue,
                        preicon: Icons.email,
                        lablecolor: context.colors.grey,
                        iconcolor: context.colors.prefixIcon,
                        textcolor: context.colors.black,
                        bordercolor: context.colors.grey,
                        h: 45.sp,
                        w: 300.sp,
                        controller: _loginController,
                      ),
                      SizedBox(height: height / 30),
                      Customtextfild.textField(
                        labletext: 'Пароль',
                        focuscolor: context.colors.blue,
                        preicon: Icons.lock,
                        lablecolor: context.colors.grey,
                        iconcolor: context.colors.prefixIcon,
                        textcolor: context.colors.black,
                        bordercolor: context.colors.grey,
                        h: 45.sp,
                        w: 300.sp,
                        controller: _passwordController,
                      ),
                      SizedBox(height: height / 30),
                    ],
                  ),
                ],
              ),
              BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is AuthSuccess) {
                    // TODO Прописать переход!!
                  }
                },
                builder: (context, state) {
                  if (state is AuthError) {
                    return const Text(
                      'Неправильный логин или пароль',
                      style: TextStyle(fontSize: 17, color: Colors.red),
                    );
                  } else if (state is AuthInProgress) {
                    return const CircularProgressIndicator(color: Colors.blue);
                  } else {
                    return const Text('');
                  }
                },
              ),
              GestureDetector(
                onTap: () {},
                child: GestureDetector(
                  onTap: () {
                    final _login = _loginController.text;
                    final _password = _passwordController.text;
                    context.read<AuthCubit>().login(_login, _password);
                  },
                  child: Button(
                      buttonText: LanguageEn.signin,
                      buttonTextColor: context.colors.white,
                      colorButton: context.colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
