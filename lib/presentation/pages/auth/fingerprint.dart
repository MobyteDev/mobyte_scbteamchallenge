import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/auth/pin.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/button.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/custom_appbar.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FingerPrint extends StatefulWidget {
  const FingerPrint({Key? key}) : super(key: key);

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
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
          context.colors.blue,
          height: height / 15,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  LanguageEn.fingerprint,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: context.colors.black,
                      fontSize: 26.sp,
                      fontFamily: 'Gilroy_Bold'),
                ),
              ),
              SizedBox(height: height / 45),
              Center(
                child: Text(
                  LanguageEn.unlockfinger,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: context.colors.grey,
                  ),
                ),
              ),
              SizedBox(height: height / 20),
              Center(
                child: Image.asset("assets/images/finger.png",
                    height: height / 3.1),
              ),
              SizedBox(height: height / 4),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Pin(),
                    ),
                  );
                },
                child: Button(
                  buttonText: LanguageEn.setupfingerprint,
                  buttonTextColor: context.colors.blue,
                  colorButton:context.colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
