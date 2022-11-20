import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/app_bar/custom_appbar.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/textfields/castom_textfield.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

import '../../widgets/buttons/button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.white,
        appBar: CustomAppBar(true, context.colors.white, "", context.colors.black,
            height: height / 15),
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
                        LanguageEn.signup,
                        style: TextStyle(
                            color: context.colors.black,
                            fontSize: 26.sp,
                            fontFamily: 'Gilroy_Bold'),
                      ),
                      SizedBox(height: height / 35),
                      Text(
                        LanguageEn.ittakesaminute,
                        style: TextStyle(
                            fontSize: 14.sp, color: context.colors.grey),
                      ),
                      SizedBox(height: height / 30),
                      Row(
                        children: [
                          Customtextfild.textField(
                              labletext: LanguageEn.fanme,
                              focuscolor: context.colors.blue,
                              preicon: Icons.person,
                              lablecolor: context.colors.grey,
                              iconcolor: context.colors.prefixIcon,
                              textcolor: context.colors.black,
                              bordercolor: context.colors.grey,
                              h: 45.sp,
                              w: 145.sp),
                          SizedBox(width: width / 40),
                          Customtextfild.textField(
                              labletext: LanguageEn.lname,
                              focuscolor: context.colors.blue,
                              preicon: Icons.person,
                              lablecolor: context.colors.grey,
                              iconcolor: context.colors.prefixIcon,
                              textcolor: context.colors.black,
                              bordercolor: context.colors.grey,
                              h: 45.sp,
                              w: 145.sp),
                        ],
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
                          w: 300.sp),
                      SizedBox(height: height / 30),
                      // Custompasswordtextfild.textField(
                      //     LanguageEn.password,
                      //     context.colors.blue,
                      //     Icons.lock,
                      //     context.colors.grey,
                      //     context.colors.prefixicon,
                      //     context.colors.black),
                      SizedBox(height: height / 30),
                      Row(
                        children: [
                          Transform.scale(
                            scale: 1.sp,
                            child: Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.sp),
                                ),
                              ),
                              activeColor: context.colors.blue,
                              side: BorderSide(color: context.colors.grey),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    LanguageEn.iagreetothe,
                                    style: TextStyle(
                                        fontSize: height / 55,
                                        color: context.colors.black),
                                  ),
                                  Text(
                                    LanguageEn.termsofservices,
                                    style: TextStyle(
                                        fontFamily: 'Gilroy_Medium',
                                        fontSize: height / 55,
                                        color: context.colors.blue),
                                  ),
                                  Text(
                                    LanguageEn.and,
                                    style: TextStyle(
                                        fontFamily: 'Gilroy_Medium',
                                        fontSize: height / 55,
                                        color: context.colors.black),
                                  ),
                                ],
                              ),
                              Text(
                                LanguageEn.privacypolicy,
                                style: TextStyle(
                                    fontFamily: 'Gilroy_Medium',
                                    fontSize: height / 55,
                                    color: context.colors.blue),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: height / 25),
              GestureDetector(
                onTap: () {
                  // Get.to(const BottomHome());
                },
                child: Button(
                  buttonText: LanguageEn.signup,
                  buttonTextColor: context.colors.blue,
                  colorButton:context.colors.white,
                ),
              ),
              SizedBox(height: height / 50),

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
                    style: TextStyle(color: context.colors.grey),
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
              SizedBox(height: height / 80),
              googlelogin(),
              SizedBox(height: height / 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LanguageEn.alreadyregistered,
                    style: TextStyle(
                        color: context.colors.grey,
                        fontSize: 13.sp,
                        fontFamily: 'Gilroy_Medium'),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.to(const Login());
                    },
                    child: Text(
                      LanguageEn.signin,
                      style: TextStyle(
                          color: context.colors.blue,
                          fontSize: 13.sp,
                          fontFamily: 'Gilroy_Medium'),
                    ),
                  )
                ],
              )
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     // Text(
              //     //   "Don’t have an account?",
              //     //   style: TextStyle(
              //     //       color: context.colors.grey,
              //     //       fontSize: 15.sp,
              //     //       fontFamily: 'Gilroy_Medium'),
              //     // ),
              //     // GestureDetector(
              //     //   onTap: () {
              //     //     Get.to(const BottomHome());
              //     //   },
              //     //   child: Text(
              //     //     "Login",
              //     //     style: TextStyle(
              //     //         color: context.colors.blue,
              //     //         fontSize: 15.sp,
              //     //         fontFamily: 'Gilroy_Bold'),
              //     //   ),
              //     // ),
              //   ],
              // )
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
