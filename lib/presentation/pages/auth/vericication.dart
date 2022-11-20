import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/auth/complateverification.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/app_bar/custom_appbar.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/buttons/button.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class Veryfication extends StatefulWidget {
  const Veryfication({Key? key}) : super(key: key);

  @override
  State<Veryfication> createState() => _VeryficationState();
}

class _VeryficationState extends State<Veryfication> {
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
                        LanguageEn.enterverification,
                        style: TextStyle(
                            color: context.colors.black,
                            fontSize: 23.sp,
                            fontFamily: 'Gilroy_Bold'),
                      ),
                      SizedBox(height: height / 30),
                      Text(
                        LanguageEn.enterfourdigitnumber,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: context.colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: height / 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  otpfild(),
                  otpfild(),
                  otpfild(),
                  otpfild(),
                ],
              ),
              SizedBox(height: height / 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LanguageEn.resetcode,
                    style: TextStyle(
                        color: context.colors.black,
                        fontSize: 13.sp,
                        fontFamily: 'Gilroy_Medium'),
                  ),
                  SizedBox(width: width / 100),
                  Text(
                    "29:58",
                    style: TextStyle(
                        color: context.colors.blue,
                        fontSize: 13.sp,
                        fontFamily: 'Gilroy_Medium'),
                  ),
                ],
              ),
              SizedBox(height: height / 15),
              GestureDetector(
                onTap: () {
                  Get.to(
                    const Complateerification(),
                  );
                },
                child: Button(
                  buttonText: LanguageEn.verify,
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

  Widget otpfild() {
    return Container(
      height: height / 13,
      width: width / 6,
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.blue, width: 1.sp),
        borderRadius: BorderRadius.all(
          Radius.circular(15.sp),
        ),
      ),
      child: TextFormField(
        keyboardType: TextInputType.number,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25.sp),
        decoration: const InputDecoration(border: InputBorder.none),
      ),
    );
  }
}
