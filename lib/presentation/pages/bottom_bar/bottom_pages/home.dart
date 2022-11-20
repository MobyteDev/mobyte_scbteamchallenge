import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/market/market.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/stockgainscard.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/widgets/home_page_title.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

import 'stock_exchange_tabs/notification.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: context.colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        // here the desired height
        child: AppBar(
          actions: [
            GestureDetector(
              onTap: () {
                Get.to(const SelectStocks());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/searsh.png"),
              ),
            ),
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
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height / 70),
              Text(
                LanguageEn.gocrypto,
                style: TextStyle(
                    fontSize: 20.sp,
                    color: context.colors.black,
                    fontFamily: 'Gilroy_Bold'),
              ),
              Text(
                LanguageEn.buildingtrustinthecrypto,
                style: TextStyle(
                    fontSize: 13.5.sp,
                    color: context.colors.grey,
                    fontFamily: 'Gilroy-Regular'),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const CusttomStockGainscard(
            account: "340000",
            percent: "2,5",
          ),
          Padding(
            padding: EdgeInsets.all(13.0.w),
            child: const HomePageTitle(
              title: "Favorites",
              isExpanded: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(13.0.w),
            child: const HomePageTitle(
              title: "My Portfolio",
              isExpanded: false,
            ),
          ),
          Row(
            children: [
              mypoyfoliyo("assets/images/Bitcoin.png", "BTC", "20,10", "+0,2%"),
              SizedBox(width: 15.w),
              mypoyfoliyo("assets/images/Bitcoin.png", "BTC", "20,10", "+0,2%"),
            ],
          ),
          SingleChildScrollView(
            child: Row(
              // shrinkWrap: true,
              // scrollDirection: Axis.horizontal,
              children: [
                mypoyfoliyo(
                    "assets/images/Bitcoin.png", "BTC", "20,10", "+0,2%"),
                SizedBox(width: 15.w),
                mypoyfoliyo(
                    "assets/images/Bitcoin.png", "BTC", "20,10", "+0,2%"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget mypoyfoliyo(image, title, stockprice, updown) {
    return Container(
      margin: EdgeInsets.only(left: width / 20),
      height: height / 4.5,
      width: width / 1.8,
      decoration: BoxDecoration(
        color: context.colors.favorites,
        borderRadius: BorderRadius.all(
          Radius.circular(20.sp),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width / 20, top: height / 60),
                child: Image.asset(image, height: height / 15),
              ),
              SizedBox(width: width / 20),
              Column(
                children: [
                  SizedBox(height: height / 50),
                  Text(
                    title,
                    style: TextStyle(
                      color: context.colors.black,
                      fontSize: 18.sp,
                      fontFamily: 'Gilroy_Bold',
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: height / 15),
          Row(
            children: [
              SizedBox(width: width / 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LanguageEn.portofolio,
                    style: TextStyle(
                        color: context.colors.grey,
                        fontFamily: 'Gilroy_Medium',
                        fontSize: 13.sp),
                  ),
                  Text(
                    stockprice,
                    style: TextStyle(
                        color: context.colors.black,
                        fontFamily: 'Gilroy_Bold',
                        fontSize: 21.sp),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                updown,
                style:
                    TextStyle(color: const Color(0xff22C36B), fontSize: 13.sp),
              ),
              SizedBox(width: width / 25),
            ],
          )
        ],
      ),
    );
  }

  LineChartData mainData(color) {
    List<Color> gradientColors = [color];
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(strokeWidth: 1, color: Colors.yellow);
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            strokeWidth: 0,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: false,
        leftTitles: SideTitles(
          showTitles: false,
          reservedSize: 20,
          margin: 8,
        ),
      ),
      borderData: FlBorderData(
          show: true, border: Border.all(color: context.colors.blue, width: 0)),
      minX: 0,
      maxX: 8,
      minY: 0,
      maxY: 5,
      lineBarsData: [
        LineChartBarData(
          spots: [
            const FlSpot(0, 2.5),
            const FlSpot(1, 2),
            const FlSpot(2, 4),
            const FlSpot(3, 3.1),
            const FlSpot(4, 4),
            const FlSpot(5, 2),
            const FlSpot(6, 4),
            const FlSpot(7, 3.1),
            const FlSpot(8, 2),
            const FlSpot(9, 1.5),
            const FlSpot(10, 3),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.1)).toList(),
          ),
        ),
      ],
    );
  }
}
