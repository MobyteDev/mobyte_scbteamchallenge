import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/app_bar/custom_appbar.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/textfields/castom_textfield.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class SelectCrypto extends StatefulWidget {
  const SelectCrypto({Key? key}) : super(key: key);

  @override
  State<SelectCrypto> createState() => _SelectCryptoState();
}

class _SelectCryptoState extends State<SelectCrypto> {

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.white,
        appBar: CustomAppBar(true,
            context.colors.white, LanguageEn.selectcrypto, context.colors.black,
            height: height / 15),
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
                // GestureDetector(
                //   onTap: () {
                //     Get.to(const Confirmation());
                //   },
                //   child: CusttomButton(
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
                //     Get.to(const Confirmation());
                //   },
                //   child: CusttomButton(
                //       "assets/images/Ambuja_logo.png",
                //       LanguageEn.binance,
                //       LanguageEn.bnb,
                //       "\$297,64",
                //       "2,87%",
                //       const Color(0xffF65556)),
                // ),
                SizedBox(height: height / 30),
                // GestureDetector(
                //   onTap: () {
                //     Get.to(const Confirmation());
                //   },
                //   child: CusttomButton(
                //       "assets/images/kotok.png",
                //       LanguageEn.litecoin,
                //       LanguageEn.ltc,
                //       "\$326,23",
                //       "2,87%",
                //       const Color(0xff22C36B)),
                // ),
                SizedBox(height: height / 30),
                // GestureDetector(
                //   onTap: () {
                //     Get.to(const Confirmation());
                //   },
                //   child: CusttomButton(
                //       "assets/images/icici.png",
                //       LanguageEn.xrp,
                //       LanguageEn.xrp,
                //       "\$326,23",
                //       "2,87%",
                //       const Color(0xffF65556)),
                // ),
                SizedBox(height: height / 30),
                // GestureDetector(
                //   onTap: () {
                //     Get.to(const Confirmation());
                //   },
                //   child: CusttomButton(
                //       "assets/images/Ambuja_logo.png",
                //       LanguageEn.binance,
                //       LanguageEn.bnb,
                //       "\$297,64",
                //       "2,87%",
                //       const Color(0xffF65556)),
                // ),
                SizedBox(height: height / 30),
                // GestureDetector(
                //   onTap: () {
                //     Get.to(const Confirmation());
                //   },
                //   child: CusttomButton(
                //       "assets/images/icici.png",
                //       LanguageEn.xrp,
                //       LanguageEn.xrp,
                //       "\$326,23",
                //       "2,87%",
                //       const Color(0xffF65556)),
                // ),
                SizedBox(height: height / 30),
                // GestureDetector(
                //   onTap: () {
                //     Get.to(const Confirmation());
                //   },
                //   child: CusttomButton(
                //       "assets/images/Ambuja_logo.png",
                //       LanguageEn.binance,
                //       LanguageEn.bnb,
                //       "\$326,23",
                //       "2,87%",
                //       const Color(0xff22C36B)),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
