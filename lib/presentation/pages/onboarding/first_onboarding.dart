import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/onboarding/onboarding_therd.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstOnboarding extends StatefulWidget {
  const FirstOnboarding({Key? key}) : super(key: key);

  @override
  State<FirstOnboarding> createState() => _FirstOnboardingState();
}

class _FirstOnboardingState extends State<FirstOnboarding> {
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
            SizedBox(height: height / 13.5),
            Image.asset("assets/images/manage.png", height: height / 2),
            SizedBox(height: height / 20),
            Text(
              LanguageEn.howeverthe,
              textAlign: TextAlign.center,
              style: TextStyle(
                  // color: notifier.getblck,
                  fontSize: 25.sp,
                  fontFamily: 'Gilroy_Bold'),
            ),
            SizedBox(height: height / 50),
            Text(
              LanguageEn.nextup,
              textAlign: TextAlign.center,
              style: TextStyle(
                  // color: notifier.getgrey,
                  fontSize: 13.sp,
                  fontFamily: 'Gilroy_Medium'),
            ),
            SizedBox(height: height / 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const Login(),
                    //   ),
                    // );
                  },
                  // child: button(LanguageEn.skip, notifier.getwihitecolor,
                  //     notifier.getbluecolor),
                ),
                SizedBox(width: width / 50),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TherdOnboarding(),
                      ),
                    );
                  },
                  // child: button(LanguageEn.next, notifier.getbluecolor,
                  //     notifier.getwihitecolor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
