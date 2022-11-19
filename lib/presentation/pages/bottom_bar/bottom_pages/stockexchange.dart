import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/buy.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';
import 'package:provider/provider.dart';
import 'stock_exchange_tabs/sell.dart';

class StockExchange extends StatefulWidget {
  const StockExchange({Key? key}) : super(key: key);

  @override
  State<StockExchange> createState() => _StockExchangeState();
}

class _StockExchangeState extends State<StockExchange>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return ScreenUtilInit(
      builder: (_, __) => DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: context.colors.white,
          appBar: AppBar(
            centerTitle: true,
            leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Image.asset("assets/images/back.png", scale: 6),
            ),
            title: Text(
              LanguageEn.exchange,
              style: TextStyle(
                  color: context.colors.black, fontFamily: 'Gilroy_Bold'),
            ),
            backgroundColor: context.colors.favorites,
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(80.sp),
              child: Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Card(
                  elevation: 0,
                  color: context.colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: context.colors.favorites,
                      padding: EdgeInsets.all(8.sp),
                      child: TabBar(
                          padding: EdgeInsets.zero,
                          unselectedLabelColor: context.colors.grey,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.sp),
                              color: context.colors.blue),
                          tabs: [
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  LanguageEn.buy,
                                ),
                              ),
                            ),
                            Tab(
                                child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                LanguageEn.sell,
                              ),
                            )),
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: const TabBarView(children: [Buy(), Sell()]),
        ),
      ),
    );
  }
}
