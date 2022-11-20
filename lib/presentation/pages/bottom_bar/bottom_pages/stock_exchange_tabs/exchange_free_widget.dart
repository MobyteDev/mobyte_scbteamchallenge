import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class ExchangeFreeWidget extends StatelessWidget {
  const ExchangeFreeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          elevation: 0,
          color: context.colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(3.sp),
            ),
          ),
          child: Container(
            color: Colors.transparent,
            height: height / 10,
            width: width / 1.65,
            child: Row(
              children: [
                SizedBox(width: width / 30),
                Image.asset("assets/images/exchangenow.png",
                    height: height / 17),
                SizedBox(width: width / 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height / 35),
                    Text(
                      LanguageEn.exchangefee,
                      style: TextStyle(
                          color: context.colors.grey,
                          fontSize: 12.sp,
                          fontFamily: 'Gilroy_Medium'),
                    ),
                    Text(
                      "0.08%",
                      style: TextStyle(
                          color: context.colors.black,
                          fontSize: 13.sp,
                          fontFamily: 'Gilroy_Medium'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Card(
          elevation: 0,
          color: context.colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(3.sp),
            ),
          ),
          child: Container(
            color: Colors.transparent,
            height: height / 10,
            width: width / 3.6,
            child: Center(
              child: Text(
                "\$32",
                style: TextStyle(
                    color: context.colors.black,
                    fontSize: 18.sp,
                    fontFamily: 'Gilroy_Bold'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
