import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/market/selectstocks.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class Notifi extends StatefulWidget {
  const Notifi({Key? key}) : super(key: key);

  @override
  State<Notifi> createState() => _NotifiState();
}

class _NotifiState extends State<Notifi> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.white,
        appBar: AppBar(
          actions: [
            GestureDetector(
                onTap: () {
                  Get.to(const SelectStocks());
                },
                child: Icon(Icons.search_rounded,
                    color: context.colors.black, size: 25.sp)),
            SizedBox(width: width / 30),
            Icon(Icons.settings, color: context.colors.black, size: 25.sp),
            SizedBox(width: width / 30),
          ],
          elevation: 0,
          backgroundColor: context.colors.white,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Image.asset("assets/images/back.png", scale: 6),
          ),
          title: Text(
            LanguageEn.notication,
            style: TextStyle(
                color: context.colors.black, fontFamily: 'Gilroy_Bold'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height / 20),
              notificationcatogery(
                LanguageEn.offers,
                LanguageEn.gratisminyank,
                LanguageEn.zerominute,
              ),
              SizedBox(height: height / 50),
              notificationcatogery(
                LanguageEn.paymentsucesses,
                LanguageEn.yousendpayment,
                LanguageEn.yesterday,
              ),
              SizedBox(height: height / 50),
              notificationcatogery(
                LanguageEn.paymentsucesses,
                LanguageEn.ojek,
                LanguageEn.july,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget notificationcatogery(ofername, title, times) {
    return Center(
      child: Container(
        height: height / 5.5,
        width: width / 1.1,
        decoration: BoxDecoration(
          color: context.colors.favorites,
          borderRadius: BorderRadius.all(
            Radius.circular(18.sp),
          ),
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height / 40),
                Row(
                  children: [
                    SizedBox(width: width / 20),
                    Icon(Icons.account_balance_wallet_sharp,
                        color: context.colors.grey, size: 25.sp),
                    SizedBox(width: width / 50),
                    Text(
                      ofername,
                      style: TextStyle(
                          color: context.colors.black,
                          fontFamily: 'Gilroy_Bold',
                          fontSize: 15.sp),
                    ),
                  ],
                ),
                SizedBox(height: height / 200),
                Row(
                  children: [
                    SizedBox(width: width / 7),
                    Text(
                      title,
                      style: TextStyle(
                          color: context.colors.black,
                          fontFamily: 'Gilroy_Medium',
                          fontSize: 12.sp),
                    ),
                  ],
                ),
                SizedBox(height: height / 30),
                Row(
                  children: [
                    SizedBox(width: width / 7),
                    Text(
                      times,
                      style: TextStyle(
                          color: context.colors.black,
                          fontFamily: 'Gilroy_Medium',
                          fontSize: 12.sp),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
