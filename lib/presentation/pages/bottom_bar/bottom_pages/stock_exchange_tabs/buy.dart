import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/selectcrypto.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/selectstocks.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/buttons/button.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class Buy extends StatefulWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.favorites,
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(
                  const SelectStocks(),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: exchangestock(),
              ),
            ),
            SizedBox(height: height / 50),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: exchangefree(),
            ),
            SizedBox(height: height / 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LanguageEn.clickherefor,
                  style: TextStyle(
                      color: context.colors.grey,
                      fontSize: 11.sp,
                      fontFamily: 'Gilroy_Medium'),
                ),
                Text(
                  LanguageEn.termsandcondition,
                  style: TextStyle(
                      color: context.colors.blue,
                      fontSize: 11.sp,
                      fontFamily: 'Gilroy_Medium'),
                ),
              ],
            ),
            Text(
              LanguageEn.forthistranjection,
              style: TextStyle(
                  color: context.colors.grey,
                  fontSize: 11.sp,
                  fontFamily: 'Gilroy_Medium'),
            ),
            SizedBox(height: height / 17),
            GestureDetector(
              onTap: () {
                Get.to(
                  const SelectCrypto(),
                  // const SelectStocks(),
                );
              },
              child: Button(
                buttonText: LanguageEn.exchangenow,
                buttonTextColor: context.colors.blue,
                colorButton: context.colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget exchangefree() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          elevation: 0,
          color: context.colors.white,
          // color: context.colors.favorites,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(3.sp),
            ),
          ),
          child: Container(
            color: Colors.transparent,
            height: height / 10,
            width: width / 1.65,
            child: Row(
              children: [
                SizedBox(width: width / 30),
                Image.asset("assets/images/exchangenow.png",
                    height: height / 17),
                SizedBox(width: width / 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height / 35),
                    Text(
                      LanguageEn.exchangefee,
                      style: TextStyle(
                          color: context.colors.grey,
                          fontSize: 12.sp,
                          fontFamily: 'Gilroy_Medium'),
                    ),
                    Text(
                      "0.08%",
                      style: TextStyle(
                          color: context.colors.black,
                          fontSize: 13.sp,
                          fontFamily: 'Gilroy_Medium'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Card(
          elevation: 0,
          color: context.colors.white,
          // color: context.colors.favorites,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(3.sp),
            ),
          ),
          child: Container(
            color: Colors.transparent,
            height: height / 10,
            width: width / 3.6,
            child: Center(
              child: Text(
                "\$32",
                style: TextStyle(
                    color: context.colors.black,
                    fontSize: 18.sp,
                    fontFamily: 'Gilroy_Bold'),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget exchangestock() {
    return Center(
      child: Card(
        elevation: 0,
        color: context.colors.white,
        // color: context.colors.favorites,
        child: Container(
          color: Colors.transparent,
          height: height / 3.4,
          width: width / 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height / 50),
              Row(
                children: [
                  SizedBox(width: width / 20),
                  Text(
                    LanguageEn.yousend,
                    style: TextStyle(
                      color: context.colors.grey,
                      fontSize: 14.5.sp,
                      fontFamily: 'Gilroy_Medium',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: width / 20),
                  Text(
                    "0.14689",
                    style: TextStyle(
                      color: context.colors.black,
                      fontSize: 15.sp,
                      fontFamily: 'Gilroy_Bold',
                    ),
                  ),
                  SizedBox(width: width / 2.6),
                  Image.asset("assets/images/airtel.jpg", height: height / 30),
                  SizedBox(width: width / 50),
                  Text(
                    LanguageEn.eth,
                    style: TextStyle(
                        color: context.colors.black,
                        fontSize: 13.sp,
                        fontFamily: 'Gilroy_Bold'),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: context.colors.grey,
                  )
                ],
              ),
              SizedBox(height: height / 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Divider(
                      indent: 20.0,
                      endIndent: 10.0,
                      thickness: 1,
                    ),
                  ),
                  Image.asset("assets/images/data.png", height: height / 40),
                  const Expanded(
                    child: Divider(
                      indent: 10.0,
                      endIndent: 20.0,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height / 50),
              Row(
                children: [
                  SizedBox(width: width / 20),
                  Text(
                    LanguageEn.youreceive,
                    style: TextStyle(
                      color: context.colors.grey,
                      fontSize: 14.5.sp,
                      fontFamily: 'Gilroy_Medium',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: width / 20),
                  Text(
                    "22878.12",
                    style: TextStyle(
                      color: context.colors.black,
                      fontSize: 15.sp,
                      fontFamily: 'Gilroy_Bold',
                    ),
                  ),
                  SizedBox(width: width / 2.7),
                  Image.asset("assets/images/Dai.png", height: height / 30),
                  SizedBox(width: width / 50),
                  Text(
                    LanguageEn.dai,
                    style: TextStyle(
                        color: context.colors.black,
                        fontSize: 13.sp,
                        fontFamily: 'Gilroy_Bold'),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: context.colors.grey,
                  )
                ],
              ),
              SizedBox(height: height / 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle, color: context.colors.blue, size: 10.sp),
                  SizedBox(width: width / 50),
                  Text(
                    "1 ETH = 12.489 DAI",
                    style: TextStyle(
                        color: context.colors.grey,
                        fontFamily: 'Gilroy_Medium',
                        fontSize: 12.sp),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
