import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/auth/face_id.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/buttons/button.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class Complateerification extends StatefulWidget {
  const Complateerification({Key? key}) : super(key: key);

  @override
  State<Complateerification> createState() => _ComplateerificationState();
}

class _ComplateerificationState extends State<Complateerification> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height / 6),
              Center(
                child: Image.asset("assets/images/vrfcomplate.png",
                    height: height / 3.3),
              ),
              SizedBox(height: height / 11),
              Text(
                LanguageEn.youreverified,
                style: TextStyle(
                    color: context.colors.black,
                    fontFamily: 'Gilroy_Bold',
                    fontSize: 27.sp),
              ),
              SizedBox(height: height / 50),
              Text(
                LanguageEn.youhavebeensucces,
                style: TextStyle(
                    color: context.colors.grey,
                    fontSize: 15.sp,
                    fontFamily: 'Gilroy_Medium'),
              ),
              SizedBox(height: height / 4.3),
              GestureDetector(
                onTap: () {
                  Get.to(const Faceid());
                },
                child: Button(
                  buttonText: LanguageEn.done,
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
