import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/di/locator.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/market/bloc/market_page_bloc.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/market/currency_elem.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/notification.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/textfields/castom_textfield.dart';
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
      builder: (_, __) => BlocProvider(
        create: (context) => getIt<MarketPageBloc>(),
        child: BlocBuilder<MarketPageBloc, MarketPageState>(
          builder: (context, state) => state.maybeWhen(
            (listCurrency) => Scaffold(
              backgroundColor: context.colors.white,
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(70.sp),
                child: AppBar(
                  actions: [
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
                      SizedBox(height: height / 20),
                      SizedBox(
                        height: height / 2,
                        child: ListView(
                          shrinkWrap: true,
                          children: listCurrency
                              .map(
                                (e) => CurrencyElem(
                                  onTap: () {},
                                  name: e.name,
                                  shortName: e.shortName,
                                  percent: e.percent,
                                  value: e.value,
                                  growing: e.isGrowing,
                                  color: context.colors.black,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            orElse: Container.new,
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
