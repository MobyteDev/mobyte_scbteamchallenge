import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/auth/fingerprint.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/button.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/custom_appbar.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class Faceid extends StatefulWidget {
  const Faceid({Key? key}) : super(key: key);

  @override
  State<Faceid> createState() => _FaceidState();
}

class _FaceidState extends State<Faceid> {
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
              Center(
                child: Text(
                  LanguageEn.setupfaceid,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: context.colors.black,
                    fontSize: 26.sp,
                    fontFamily: 'Gilroy_Bold',
                  ),
                ),
              ),
              SizedBox(height: height / 45),
              Center(
                child: Text(
                  LanguageEn.unlockcrypto,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: context.colors.grey,
                  ),
                ),
              ),
              SizedBox(height: height / 20),
              Center(
                child: Image.asset(
                  "assets/images/faceAuth.png",
                  height: height / 3.1,
                ),
              ),
              SizedBox(height: height / 4),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FingerPrint(),
                    ),
                  );
                },
                child: Button(
                  buttonText: LanguageEn.scanmyface,
                  buttonTextColor: context.colors.blue,
                  colorButton: context.colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
