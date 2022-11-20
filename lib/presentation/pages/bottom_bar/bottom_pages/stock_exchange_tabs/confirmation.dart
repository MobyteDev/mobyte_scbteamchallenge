import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/success.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/app_bar/custom_appbar.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/buttons/button.dart';

import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.white,
        appBar: CustomAppBar(true,
            context.colors.white, LanguageEn.confirmation, context.colors.black,
            height: height / 15),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height / 40),
              confirmation(),
              SizedBox(height: height / 35),
              Row(
                children: [
                  SizedBox(width: width / 20),
                  Icon(
                    Icons.lock,
                    color: context.colors.grey,
                    size: 16.sp,
                  ),
                  SizedBox(width: width / 100),
                  Text(
                    LanguageEn.processedbycryptoline,
                    style: TextStyle(
                        color: context.colors.grey,
                        fontSize: 12.sp,
                        fontFamily: 'Gilroy_Medium'),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(width: width / 9.5),
                  Text(
                    LanguageEn.securedbythe,
                    style: TextStyle(
                        color: context.colors.grey,
                        fontSize: 12.sp,
                        fontFamily: 'Gilroy_Medium'),
                  ),
                  Text(
                    LanguageEn.privacypolicy,
                    style: TextStyle(
                        color: context.colors.blue,
                        fontSize: 12.sp,
                        fontFamily: 'Gilroy_Medium'),
                  ),
                ],
              ),
              SizedBox(height: height / 3.8),
              GestureDetector(
                onTap: () {
                  Get.to(const Success());
                },
                child: Button(
                  buttonText: LanguageEn.confirmorder,
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

  Widget confirmation() {
    return Center(
      child: Card(
        color: context.colors.favorites,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.sp),
          ),
        ),
        child: Container(
          color: Colors.transparent,
          height: height / 2.7,
          width: width / 1.1,
          child: Column(
            children: [
              SizedBox(height: height / 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/airtel.jpg",
                          height: height / 15),
                      SizedBox(height: height / 50),
                      Text(
                        LanguageEn.eth,
                        style: TextStyle(
                            fontFamily: 'Gilroy_Bold', fontSize: 13.sp),
                      )
                    ],
                  ),
                  SizedBox(width: width / 15),
                  Column(
                    children: [
                      SizedBox(height: height / 40),
                      Text(
                        LanguageEn.to,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: 'Gilroy_Medium',
                            color: context.colors.grey),
                      )
                    ],
                  ),
                  SizedBox(width: width / 15),
                  Column(
                    children: [
                      Image.asset("assets/images/Dai.png", height: height / 15),
                      SizedBox(height: height / 50),
                      Text(
                        LanguageEn.dai,
                        style: TextStyle(
                            fontFamily: 'Gilroy_Bold', fontSize: 13.sp),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                color: Colors.transparent,
                height: height / 50,
                width: width,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: width / 30, right: width / 30, top: height / 30),
                  child: Divider(
                    color: context.colors.grey,
                  ),
                ),
              ),
              SizedBox(height: height / 25),
              Row(
                children: [
                  SizedBox(width: width / 20),
                  Text(
                    LanguageEn.amount,
                    style: TextStyle(
                        color: context.colors.grey,
                        fontFamily: 'Gilroy_Medium',
                        fontSize: 13.sp),
                  ),
                  const Spacer(),
                  Text(
                    "22878.12 DAI",
                    style: TextStyle(
                        color: context.colors.black,
                        fontFamily: 'Gilroy_Bold',
                        fontSize: 13.sp),
                  ),
                  SizedBox(width: width / 20),
                ],
              ),
              SizedBox(height: height / 50),
              Row(
                children: [
                  SizedBox(width: width / 20),
                  Text(
                    LanguageEn.free,
                    style: TextStyle(
                        color: context.colors.grey,
                        fontFamily: 'Gilroy_Medium',
                        fontSize: 13.sp),
                  ),
                  const Spacer(),
                  Text(
                    "0",
                    style: TextStyle(
                        color: context.colors.black,
                        fontFamily: 'Gilroy_Bold',
                        fontSize: 13.sp),
                  ),
                  SizedBox(width: width / 20),
                ],
              ),
              Container(
                color: Colors.transparent,
                height: height / 50,
                width: width,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: width / 30, right: width / 30, top: height / 30),
                  child: Divider(
                    color: context.colors.grey,
                  ),
                ),
              ),
              SizedBox(height: height / 25),
              Row(
                children: [
                  SizedBox(width: width / 20),
                  Text(
                    LanguageEn.total,
                    style: TextStyle(
                        color: context.colors.black,
                        fontFamily: 'Gilroy_Bold',
                        fontSize: 13.sp),
                  ),
                  const Spacer(),
                  Text(
                    "22878.12 DAI",
                    style: TextStyle(
                        color: context.colors.blue,
                        fontFamily: 'Gilroy_Bold',
                        fontSize: 13.sp),
                  ),
                  SizedBox(width: width / 20),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
