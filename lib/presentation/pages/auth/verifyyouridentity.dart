import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/app_bar/custom_appbar.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/buttons/button.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class VerifyYourIdentity extends StatefulWidget {
  const VerifyYourIdentity({Key? key}) : super(key: key);

  @override
  State<VerifyYourIdentity> createState() => _VerifyYourIdentityState();
}

class _VerifyYourIdentityState extends State<VerifyYourIdentity> {
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
            children: [
              Row(
                children: [
                  SizedBox(width: width / 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LanguageEn.letsverify,
                        style: TextStyle(
                            color: context.colors.black,
                            fontSize: 23.sp,
                            fontFamily: 'Gilroy_Bold'),
                      ),
                      SizedBox(height: height / 30),
                      Text(
                        LanguageEn.chooseyourdocument,
                        style: TextStyle(
                            fontSize: 14.sp, color: context.colors.grey),
                      ),
                      SizedBox(height: height / 8),
                      Text(
                        LanguageEn.methodofverification,
                        style: TextStyle(
                            fontSize: 14.sp, color: context.colors.grey),
                      ),
                      SizedBox(height: height / 50),
                      methodverification(
                          LanguageEn.passport, "assets/images/passport.png"),
                      SizedBox(height: height / 50),
                      methodverification(LanguageEn.identitycard,
                          "assets/images/identifitycard.png"),
                      SizedBox(height: height / 50),
                      methodverification(LanguageEn.digitaldocument,
                          "assets/images/digitaldocument.png"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: height / 5),
              GestureDetector(
                  onTap: () {
                    // Get.to(const Cameraverification());
                  },
                  child: Button(
                    buttonText: LanguageEn.continuee,
                    buttonTextColor: context.colors.blue,
                    colorButton: context.colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget methodverification(verificationname, image) {
    return Container(
      height: height / 12,
      width: width / 1.14,
      decoration: BoxDecoration(
        color: context.colors.identifyMethod,
        borderRadius: BorderRadius.all(
          Radius.circular(15.sp),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Image.asset(image),
          ),
          SizedBox(width: width / 80),
          Text(
            verificationname,
            style: TextStyle(
                color: context.colors.black,
                fontFamily: 'Gilroy_Bold',
                fontSize: 16.sp),
          ),
          const Spacer(),
          Icon(Icons.arrow_forward_ios_rounded,
              color: context.colors.grey, size: 20.sp),
          SizedBox(width: width / 20),
        ],
      ),
    );
  }
}
