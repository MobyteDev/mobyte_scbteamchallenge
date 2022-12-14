import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/models/currency_model/currency_model.dart';
import 'package:mobyte_scbteamchallenge/navigation/auto_router.gr.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/sell/select_currency_pay_page.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class ExchangeStocksSellWidget extends StatelessWidget {
  final CurrencyModel currency1;
  final CurrencyModel currency2;
  const ExchangeStocksSellWidget({
    Key? key,
    required this.currency1,
    required this.currency2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        color: context.colors.white,
        child: Container(
          color: Colors.transparent,
          height: height / 3.4,
          width: width / 1.1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height / 50),
              Row(
                children: [
                  SizedBox(width: width / 20),
                  Text(
                    LanguageEn.youpay,
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
                    "\$1,500.00",
                    style: TextStyle(
                      color: context.colors.black,
                      fontSize: 15.sp,
                      fontFamily: 'Gilroy_Bold',
                    ),
                  ),
                  SizedBox(width: width / 3),
                  GestureDetector(
                    onTap: () {
                      context.router.navigate(
                        const SelectCurrencyPayRoute(),
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset("assets/images/usd.png",
                            height: height / 30),
                        SizedBox(width: width / 50),
                        Text(
                          currency1.shortName,
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
                  ),
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
                    "0.5384",
                    style: TextStyle(
                      color: context.colors.black,
                      fontSize: 15.sp,
                      fontFamily: 'Gilroy_Bold',
                    ),
                  ),
                  SizedBox(width: width / 2.5),
                  GestureDetector(
                    onTap: () {
                      context.router.navigate(
                        const SelectCurrencyPayRoute(),
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset("assets/images/RBL.jpg",
                            height: height / 30),
                        SizedBox(width: width / 50),
                        Text(
                          currency2.shortName,
                          style: TextStyle(
                              color: context.colors.black,
                              fontSize: 13.sp,
                              fontFamily: 'Gilroy_Bold'),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: context.colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: height / 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle, color: context.colors.blue, size: 10.sp),
                  SizedBox(width: width / 50),
                  Text(
                    "1 USD = 0.00023 USD",
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
