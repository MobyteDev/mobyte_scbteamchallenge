import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/utils/app_text_styles.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class MyExchangeStocksBuyWidget extends StatefulWidget {
  final double curRatio;
  const MyExchangeStocksBuyWidget({
    Key? key,
    required this.curRatio,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyExchangeStocksBuyWidgetState();
}

class MyExchangeStocksBuyWidgetState extends State<MyExchangeStocksBuyWidget> {
  double? value1 = 0;
  double? value2 = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        color: context.colors.white,
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
                  Expanded(
                    child: SizedBox(
                      height: 25.h,
                      child: TextField(
                        style: AppTextStyles.moneyTextStyle.copyWith(
                          color: context.colors.black,
                        ),
                        //keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
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
                  ),
                  SizedBox(width: 45.w),
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
                  Expanded(
                    child: SizedBox(
                      height: 25.h,
                      child: TextField(
                        style: AppTextStyles.moneyTextStyle.copyWith(
                          color: context.colors.black,
                        ),
                        //keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
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
                  ),
                  SizedBox(width: 45.w),
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
