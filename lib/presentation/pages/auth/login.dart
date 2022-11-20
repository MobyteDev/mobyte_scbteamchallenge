import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/auth/phone_num_reset_password.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/auth/signup.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/app_bar/custom_appbar.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/buttons/button.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/textfields/castom_textfield.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.white,
        appBar: CustomAppBar(true,
          context.colors.white,
          "",
          context.colors.black,
          height: height / 15,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: width / 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LanguageEn.welcome,
                        style: TextStyle(
                            color: context.colors.black,
                            fontSize: 26.sp,
                            fontFamily: 'Gilroy_Bold'),
                      ),
                      SizedBox(height: height / 40),
                      Text(
                        LanguageEn.youhavebeenmissed,
                        style: TextStyle(
                            fontSize: 16.sp, color: context.colors.grey),
                      ),
                      SizedBox(height: height / 30),
                      Customtextfild.textField(
                        labletext: LanguageEn.emailadress,
                        focuscolor: context.colors.blue,
                        preicon: Icons.email,
                        lablecolor: context.colors.grey,
                        iconcolor: context.colors.prefixIcon,
                        textcolor: context.colors.black,
                        bordercolor: context.colors.grey,
                        h: 45.sp,
                        w: 300.sp,
                      ),
                      SizedBox(height: height / 30),
                      // Custompasswordtextfild.textField(
                      //   labletext: LanguageEn.password,
                      //   focuscolor: context.colors.blue,
                      //   preicon: Icons.lock,
                      //   lablecolor: context.colors.grey,
                      //   iconcolor: context.colors.prefixicon,
                      //   textcolor: context.colors.black,
                      // ),
                      SizedBox(height: height / 30),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        const PhoneNumResetPassword(),
                      );
                    },
                    child: Text(
                      LanguageEn.forgotpassword,
                      style: TextStyle(
                          color: context.colors.blue,
                          fontSize: 13.5.sp,
                          fontFamily: 'Gilroy_Medium'),
                    ),
                  ),
                  SizedBox(width: width / 10),
                ],
              ),
              SizedBox(height: height / 20),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const BottomHome(),
                  //   ),
                  // );
                },
                child: Button(
                    buttonText: LanguageEn.signin,
                    buttonTextColor: context.colors.blue,
                    colorButton: context.colors.white),
              ),
              SizedBox(height: height / 40),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 27.0, right: 27.0),
                      child: Divider(
                        color: context.colors.grey,
                        height: 50,
                      ),
                    ),
                  ),
                  Text(
                    LanguageEn.oR,
                    style: TextStyle(
                      color: context.colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 27.0, right: 27.0),
                      child: Divider(
                        color: context.colors.grey,
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height / 50),
              googlelogin(),
              SizedBox(height: height / 6.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LanguageEn.donthaveanaccount,
                    style: TextStyle(
                        color: context.colors.grey,
                        fontSize: 15.sp,
                        fontFamily: 'Gilroy_Medium'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const SignUp());
                    },
                    child: Text(
                      LanguageEn.signup,
                      style: TextStyle(
                          color: context.colors.blue,
                          fontSize: 15.sp,
                          fontFamily: 'Gilroy_Bold'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget googlelogin() {
    return Center(
      child: Container(
        height: height / 15,
        width: width / 1.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15.sp),
          ),
          border: Border.all(color: context.colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/google.png", height: height / 25),
            SizedBox(width: width / 25),
            Text(
              LanguageEn.continuewithgoogle,
              style: TextStyle(
                  color: context.colors.black,
                  fontSize: 15.sp,
                  fontFamily: 'Gilroy_Bold'),
            ),
          ],
        ),
      ),
    );
  }
}
