import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/app_bar/custom_appbar.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/buttons/button.dart';

import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class BuyStock extends StatefulWidget {
  const BuyStock({Key? key}) : super(key: key);

  @override
  State<BuyStock> createState() => _BuyStockState();
}

class _BuyStockState extends State<BuyStock> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.white,
        appBar: CustomAppBar(
          true,
          context.colors.white,
          "Buy Stock",
          context.colors.black,
          height: height / 15,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height / 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$",
                    style: TextStyle(
                        fontSize: 40.sp,
                        color: context.colors.black,
                        fontFamily: 'Gilroy_Bold'),
                  ),
                  SizedBox(width: width / 70),
                  pricetextfild()
                ],
              ),
              SizedBox(height: height / 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  maxprice("\$1"),
                  maxprice("\$10"),
                  maxprice("\$50"),
                  maxprice("\$100"),
                ],
              ),
              SizedBox(height: height / 20),
              GestureDetector(
                  onTap: () {
                    // Get.to(const PaymentMethod());
                  },
                  child: Button(
                    buttonText: "Buy",
                    buttonTextColor: context.colors.blue,
                    colorButton: context.colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget maxprice(txt) {
    return Container(
      color: Colors.transparent,
      height: height / 15,
      width: width / 5.5,
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Text(
            txt,
            style: TextStyle(
                fontSize: 25.sp,
                color: context.colors.grey,
                fontFamily: 'Gilroy_Bold'),
          ),
        ),
      ),
    );
  }

  Widget pricetextfild() {
    return Container(
      color: Colors.transparent,
      width: width / 5,
      child: TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: 30.sp,
            color: context.colors.black,
            fontFamily: 'Gilroy_Bold'),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "0",
            hintStyle: TextStyle(color: context.colors.black, fontSize: 40.sp)),
      ),
    );
  }
}
