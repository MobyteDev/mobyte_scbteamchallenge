import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/Auth/login.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/button.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/onboarding/onboarding_second.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class ThirdOnboarding extends StatefulWidget {
  const ThirdOnboarding({Key? key}) : super(key: key);

  @override
  State<ThirdOnboarding> createState() => _ThirdOnboardingState();
}

class _ThirdOnboardingState extends State<ThirdOnboarding> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: context.colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height / 13.5),
            Image.asset("assets/images/Laptop.png", height: height / 2),
            SizedBox(height: height / 20),
            Text(
              LanguageEn.startedDiscover,
              textAlign: TextAlign.center,
              style: TextStyle(
                  // color: context.colors.black,
                  fontSize: 25.sp,
                  fontFamily: 'Gilroy_Bold'),
            ),
            SizedBox(height: height / 50),
            Text(
              LanguageEn.starttradingyourmoney,
              textAlign: TextAlign.center,
              style: TextStyle(
                  // color: context.colors.grey,
                  fontSize: 13.sp,
                  fontFamily: 'Gilroy_Medium'),
            ),
            SizedBox(height: height / 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  // child: button(LanguageEn.skip, context.colors.white,
                  //     context.colors.blue),
                ),
                SizedBox(width: width / 50),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OnbondingSecond(),
                      ),
                    );
                  },
                  child: Button(
                    buttonText: LanguageEn.next,
                    buttonTextColor: context.colors.blue,
                    colorButton: context.colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
