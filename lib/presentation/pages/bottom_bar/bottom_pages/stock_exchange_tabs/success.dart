import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';
import 'package:provider/provider.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height / 8),
              Center(
                child: Image.asset("assets/images/vrfcomplate.png",
                    height: height / 3),
              ),
              SizedBox(height: height / 20),
              Text(
                LanguageEn.success,
                style: TextStyle(
                    fontFamily: 'Gilroy_Bold',
                    fontSize: 24.sp,
                    color: context.colors.black),
              ),
              SizedBox(height: height / 20),
              Container(
                height: height / 15,
                width: width / 2.8,
                decoration: BoxDecoration(
                  color: context.colors.favorites,
                  borderRadius: BorderRadius.all(
                    Radius.circular(13.sp),
                  ),
                ),
                child: Center(
                  child: Text(
                    "22878.12 DAI",
                    style: TextStyle(
                        color: context.colors.blue,
                        fontFamily: 'Gilroy_Bold',
                        fontSize: 14.sp),
                  ),
                ),
              ),
              SizedBox(height: height / 40),
              Text(
                LanguageEn.hasbeenexchange,
                style: TextStyle(
                    color: context.colors.grey,
                    fontSize: 12.sp,
                    fontFamily: 'Gilroy_Medium'),
              ),
              SizedBox(height: height / 5.2),
              // GestureDetector(
              //     onTap: () {
              //       Get.to(const BottomHome());
              //     },
              //     child: Button(LanguageEn.done, context.colors.blue,
              //         context.colors.white))
            ],
          ),
        ),
      ),
    );
  }
}
