import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/exchange_free_widget.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/exchange_stocks_sell_widget.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/market/selectstocks.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';
import 'package:provider/provider.dart';

class Sell extends StatefulWidget {
  const Sell({Key? key}) : super(key: key);

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.favorites,
        body: Column(
          children: [
            const ExchangeStocksSellWidget(),
            SizedBox(height: height / 50),
            const ExchangeFreeWidget(),
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
          ],
        ),
      ),
    );
  }
}
