import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/notification.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/castom_textfield.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/custtom_button.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class SelectStocks extends StatefulWidget {
  const SelectStocks({Key? key}) : super(key: key);

  @override
  State<SelectStocks> createState() => _SelectStocksState();
}

class _SelectStocksState extends State<SelectStocks> {

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.sp),
          // here the desired height
          child: AppBar(
            leading:  GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Image.asset("assets/images/back.png", scale: 5),
            ),
            actions: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Image.asset("assets/images/searsh.png"),
              // ),
              GestureDetector(
                onTap: () {
                  Get.to(const Notifi());
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/bell.png"),
                ),
              ),
            ],
            elevation: 0,
            backgroundColor: context.colors.white,
            title: Text(
              LanguageEn.market,
              style: TextStyle(
                  fontSize: 20.sp,
                  color: context.colors.black,
                  fontFamily: 'Gilroy_Bold'),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                // SizedBox(height: height / 50),
                Center(
                  child: Customtextfild.textField(
                      labletext: "Search  company, stocks...",
                      focuscolor: context.colors.blue,
                      preicon: Icons.search_rounded,
                      lablecolor: context.colors.grey,
                      iconcolor: context.colors.black,
                      textcolor: context.colors.grey,
                      bordercolor: context.colors.grey,
                      h: 50.sp,
                      w: 310.sp),
                ),
                SizedBox(height: height / 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    marketrate(LanguageEn.marketcap, "\$2.5B", "+6,15%"),
                    marketrate(LanguageEn.volume, "\$219B", "+1,15%"),
                    marketrate(LanguageEn.btcdominance, "\$60%", "+0,45%"),
                  ],
                ),
                SizedBox(height: height / 20),
                // GestureDetector(
                //   onTap: () {
                //     // Get.to(const Chart());
                //   },
                //   child: CustomButton(
                //       "assets/images/airtel.jpg",
                //       LanguageEn.ethereum,
                //       LanguageEn.eth,
                //       "\$127,00",
                //       "10,03%",
                //       const Color(0xff22C36B)),
                // ),
                SizedBox(height: height / 30),
                // GestureDetector(
                //   onTap: () {
                //     Get.to(const Chart());
                //   },
                //   child: CusttomButton(
                //       "assets/images/Ambuja_logo.png",
                //       LanguageEn.binance,
                //       LanguageEn.bnb,
                //       "\$525,64",
                //       "2,87%",
                //       const Color(0xffF65556)),
                // ),
                SizedBox(height: height / 30),
                // GestureDetector(
                //   onTap: () {
                //     Get.to(const Chart());
                //   },
                //   child: CusttomButton(
                //       "assets/images/kotok.png",
                //       LanguageEn.litecoin,
                //       LanguageEn.ltc,
                //       "\$36,3",
                //       "20,99%",
                //       const Color(0xff22C36B)),
                // ),
                SizedBox(height: height / 30),
                // GestureDetector(
                //   onTap: () {
                //     Get.to(const Chart());
                //   },
                //   child: CusttomButton(
                //       "assets/images/icici.png",
                //       LanguageEn.xrp,
                //       LanguageEn.xrp,
                //       "\$36,210",
                //       "2,87%",
                //       const Color(0xffF65556)),
                // ),
                SizedBox(height: height / 30),
                // GestureDetector(
                //   onTap: () {
                //     Get.to(const Chart());
                //   },
                //   child: CusttomButton(
                //       "assets/images/Ambuja_logo.png",
                //       LanguageEn.binance,
                //       LanguageEn.bnb,
                //       "\$2,644",
                //       "7,857%",
                //       const Color(0xffF65556)),
                // ),
                SizedBox(height: height / 30),
                // GestureDetector(
                //   onTap: () {
                //     Get.to(const Chart());
                //   },
                //   child: CusttomButton(
                //       "assets/images/icici.png",
                //       LanguageEn.xrp,
                //       LanguageEn.xrp,
                //       "\$36,243",
                //       "1,42%",
                //       const Color(0xffF65556)),
                // ),
                SizedBox(height: height / 30),
                // GestureDetector(
                //   onTap: () {
                //     Get.to(const Chart());
                //   },
                //   child: CusttomButton(
                //       "assets/images/Ambuja_logo.png",
                //       LanguageEn.binance,
                //       LanguageEn.bnb,
                //       "\$32,243",
                //       "2,17%",
                //       const Color(0xff22C36B)),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget marketrate(txt, rate, updown) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txt,
          style: TextStyle(
              color: context.colors.grey,
              fontFamily: 'Gilroy_Medium',
              fontSize: 13.sp),
        ),
        SizedBox(height: height / 200),
        Text(
          rate,
          style: TextStyle(
              color: context.colors.black,
              fontFamily: 'Gilroy_Bold',
              fontSize: 14.sp),
        ),
        SizedBox(height: height / 200),
        Text(
          updown,
          style: TextStyle(
              color: const Color(0xff22C36B),
              fontFamily: 'Gilroy_Bold',
              fontSize: 14.sp),
        )
      ],
    );
  }
}
