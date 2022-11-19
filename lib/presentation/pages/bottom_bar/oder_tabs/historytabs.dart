import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/calenderrr.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';
class Historytabs extends StatefulWidget {
  const Historytabs({Key? key}) : super(key: key);

  @override
  State<Historytabs> createState() => _HistorytabsState();
}

class _HistorytabsState extends State<Historytabs> {

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.white,
        body: Column(
          children: [
            calender(
              context.colors.white,
              context.colors.white,
              context.colors.white,
              context.colors.white,
              context.colors.black,
              context.colors.black,
            ),
            // SizedBox(height: height / 30),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  "Recent Order",
                  style: TextStyle(color: context.colors.black, fontSize: 16.sp),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  "Monday, 14 June 2021",
                  style: TextStyle(color: context.colors.grey, fontSize: 13.sp),
                ),
              ],
            ),
            SizedBox(height: height / 15),
            // GestureDetector(
            //   onTap: () {
            //     // Get.to(const Chart());
            //   },
            //   child: const CusttomButton(
            //       "assets/images/kotok.png",
            //       "Kotak Mahindra Bank",
            //       "Kotak Mahindra PVL.",
            //       "\$326,23",
            //       "2,87%",
            //       Color(0xffF65556)),
            // ),
            SizedBox(height: height / 25),
            // GestureDetector(
            //   onTap: () {
            //     Get.to(const Chart());
            //   },
            //   child: const CusttomButton("assets/images/hdfc.png", "HDFC bank",
            //       "HDFC Inc.", "\$326,23", "2,87%", Color(0xffF65556)),
            // ),
            SizedBox(height: height / 25),
            // GestureDetector(
            //   onTap: () {
            //     Get.to(const Chart());
            //   },
            //   child: const CusttomButton(
            //       "assets/images/airtel.jpg",
            //       "Airtel Bharti",
            //       "Airtel",
            //       "\$326,23",
            //       "2,87%",
            //       Color(0xff22C36B)),
            // ),
            SizedBox(height: height / 25),
            // GestureDetector(
            //   onTap: () {
            //     Get.to(const Chart());
            //   },
            //   child: const CusttomButton(
            //       "assets/images/icici.png",
            //       "icici bank",
            //       "icici",
            //       "\$326,23",
            //       "2,87%",
            //       Color(0xff22C36B)),
            // ),
          ],
        ),
      ),
    );
  }
}
