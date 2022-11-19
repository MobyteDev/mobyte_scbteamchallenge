import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';

class HomePageTitle extends StatelessWidget {
  final String title;
  final bool isExpanded;
  const HomePageTitle({
    super.key,
    required this.title,
    required this.isExpanded,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20.sp,
            color: context.colors.black,
            fontFamily: 'Gilroy_Bold',
            fontWeight: FontWeight.bold,
          ),
        ),
        isExpanded
            ? InkWell(
                onTap: (() {}),
                child: Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: context.colors.blue,
                    fontFamily: 'Gilroy_Bold',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
