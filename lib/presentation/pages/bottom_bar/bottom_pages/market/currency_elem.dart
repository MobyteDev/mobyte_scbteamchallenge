import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/buttons/custtom_button.dart';
import 'package:mobyte_scbteamchallenge/utils/app_text_styles.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class CurrencyElem extends StatelessWidget {
  final String name;
  final String shortName;
  // final String graph;
  final String percent;
  final String value;
  //final String icon;
  final bool growing;
  final Color color;

  final VoidCallback onTap;
  const CurrencyElem({
    Key? key,
    required this.onTap,
    required this.name,
    required this.shortName,
    //   required this.graph,
    required this.percent,
    required this.value,
    required this.growing,
    //  required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            //  mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/usd.png",
                width: 40.w,
                height: 40.w,
              ),
              const Spacer(),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    name,
                    style: AppTextStyles.moneyTextStyle.copyWith(
                      color: color,
                    ),
                  ),
                  Text(
                    shortName,
                    style: AppTextStyles.moneyTextStyle.copyWith(
                      color: color,
                      fontSize: 11.sp,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                width: 40.w,
                height: 40.h,
                child: Image.asset("assets/images/Watchlist_chart.png"),
              ),
              const Spacer(),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    value.toString(),
                    style: AppTextStyles.moneyTextStyle.copyWith(
                      color: color,
                    ),
                  ),
                  SizedBox(
                    width: 50.w,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.arrow_drop_up,
                          size: 10.r,
                        ),
                        Text(
                          percent,
                          style: TextStyle(
                            color: (growing) ? Colors.green : Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: height / 30),
      ],
    );
  }
}
