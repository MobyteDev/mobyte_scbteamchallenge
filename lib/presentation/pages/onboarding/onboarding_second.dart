import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/Auth/signup.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnbondingSecond extends StatefulWidget {
  const OnbondingSecond({Key? key}) : super(key: key);

  @override
  State<OnbondingSecond> createState() => _OnbondingSecondState();
}

class _OnbondingSecondState extends State<OnbondingSecond> {

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: context.colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height / 6.5),
            Image.asset("assets/images/getstarted.png"),
            SizedBox(height: height / 20),
            Text(
              LanguageEn.bestappto,
              textAlign: TextAlign.center,
              style: TextStyle(
                  // color: context.colors.black,
                  fontSize: 25.sp,
                  fontFamily: 'Gilroy_Bold'),
            ),
            SizedBox(height: height / 40),
            Text(
              LanguageEn.trackmorethan,
              textAlign: TextAlign.center,
              style: TextStyle(
                  // color: context.colors.grey,
                  fontSize: 13.sp,
                  fontFamily: 'Gilroy_Medium'),
            ),
            SizedBox(height: height / 5.9),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUp(),
                  ),
                );
              },
              // child: Button(LanguageEn.getstarted, context.colors.blue,
              //     context.colors.white,),
            ),
            // GestureDetector(
            //     onTap: () {
            //       Get.to(
            //         const Login(),
            //       );
            //     },
            //     child: button(
            //         "Login", context.colors.white, context.colors.blue)),
          ],
        ),
      ),
    );
  }
}
