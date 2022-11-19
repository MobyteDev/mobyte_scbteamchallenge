import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stockexchange.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CusttomStockGainscard extends StatefulWidget {
  final String account;
  final String percent;
  const CusttomStockGainscard({
    Key? key,
    required this.account,
    required this.percent,
  }) : super(key: key);

  @override
  State<CusttomStockGainscard> createState() => _CusttomStockGainscardState();
}

class _CusttomStockGainscardState extends State<CusttomStockGainscard> {
  get borderRadius => BorderRadius.circular(15);

  bool showAvg = false;

  int touchedIndex = -1;
  late ColorNotifier notifier;

  getdarkmodepreviousstate() async {}

  @override
  void initState() {
    super.initState();
    getdarkmodepreviousstate();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Stack(
          children: [
            Center(
              child: Container(
                color: Colors.transparent,
                height: height / 5.5,
                width: width / 1.1,
                child: Card(
                  color: const Color(0xff2873FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.sp),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height / 50),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width / 25, right: width / 25),
                        child: Row(
                          children: [
                            Text(
                              LanguageEn.myPortfolio,
                              style: TextStyle(
                                color: context.colors.white,
                                fontSize: 15.sp,
                                fontFamily: 'Gilroy_Medium',
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              "assets/images/statistics.png",
                              height: height / 25,
                            ),
                            SizedBox(
                              width: width / 100,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height / 100),
                      Row(
                        children: [
                          SizedBox(width: width / 27),
                          Text(
                            widget.account,
                            style: TextStyle(
                              color: context.colors.white,
                              fontSize: 20.sp,
                              fontFamily: 'Gilroy_Bold',
                            ),
                          ),
                          const Spacer(),
                          Text(
                            widget.percent,
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: 'Gilroy_Medium',
                              color: context.colors.white,
                            ),
                          ),
                          SizedBox(width: width / 23),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: height / 7.3),
                Row(
                  children: [
                    SizedBox(width: width / 10),
                    GestureDetector(
                        onTap: () {
                          Get.to(const StockExchange());
                        },
                        child: cardbutton(
                            "assets/images/deposit.png", LanguageEn.deposit)),
                    SizedBox(width: width / 50),
                    GestureDetector(
                        onTap: () {
                          Get.to(const StockExchange());
                        },
                        child: cardbutton(
                            "assets/images/withdraw.png", LanguageEn.withdraw)),
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget cardbutton(image, name) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(12.sp),
      ),
      elevation: 1,
      child: Container(
        color: Colors.transparent,
        height: height / 18,
        width: width / 2.7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: height / 35, color: Colors.black),
            SizedBox(width: width / 70),
            Text(
              name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontFamily: 'Gilroy_Medium'),
            )
          ],
        ),
      ),
    );
  }
}
