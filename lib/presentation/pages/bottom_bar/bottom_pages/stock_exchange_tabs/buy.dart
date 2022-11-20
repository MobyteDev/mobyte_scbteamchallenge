import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/exchange_free_widget.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/exchange_stocks_buy_widget.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/selectcrypto.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/selectstocks.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/buttons/button.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

import 'my_exchange_stocks_buy_widget.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 13, right: 13),
                child: ExchangeStocksBuyWidget(),
              ),
              SizedBox(height: height / 50),
              const Padding(
                padding: EdgeInsets.only(left: 13, right: 13),
                child: ExchangeFreeWidget(),
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
      ),
    );
  }
}
