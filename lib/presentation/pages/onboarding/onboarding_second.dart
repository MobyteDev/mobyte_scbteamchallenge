import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnbondingSecond extends StatefulWidget {
  const OnbondingSecond({Key? key}) : super(key: key);

  @override
  State<OnbondingSecond> createState() => _OnbondingSecondState();
}

class _OnbondingSecondState extends State<OnbondingSecond> {
  // late ColorNotifier notifier;
  getdarkmodepreviousstate() async {
    final prefs = await SharedPreferences.getInstance();
    bool? previusstate = prefs.getBool("setIsDark");
    // if (previusstate == null) {
    //   notifier.setIsDark = false;
    // } else {
    //   notifier.setIsDark = previusstate;
    // }
  }

  @override
  void initState() {
    super.initState();
    getdarkmodepreviousstate();
  }

  @override
  Widget build(BuildContext context) {
    // notifier = Provider.of<ColorNotifier>(context, listen: true);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: notifier.getwihitecolor,
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
                  // color: notifier.getblck,
                  fontSize: 25.sp,
                  fontFamily: 'Gilroy_Bold'),
            ),
            SizedBox(height: height / 40),
            Text(
              LanguageEn.trackmorethan,
              textAlign: TextAlign.center,
              style: TextStyle(
                  // color: notifier.getgrey,
                  fontSize: 13.sp,
                  fontFamily: 'Gilroy_Medium'),
            ),
            SizedBox(height: height / 5.9),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const SignUp(),
                //   ),
                // );
              },
              // child: Button(LanguageEn.getstarted, notifier.getbluecolor,
              //     notifier.getwihitecolor,),
            ),
            // GestureDetector(
            //     onTap: () {
            //       Get.to(
            //         const Login(),
            //       );
            //     },
            //     child: button(
            //         "Login", notifier.getwihitecolor, notifier.getbluecolor)),
          ],
        ),
      ),
    );
  }
}
