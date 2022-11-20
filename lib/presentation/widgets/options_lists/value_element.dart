import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class ValueElement extends StatelessWidget {
  final VoidCallback? onTap;
  final String image;
  final String name;
  const ValueElement({
    Key? key,
    this.onTap,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            SizedBox(width: width / 25),
            Image.asset(image, height: height / 22),
            SizedBox(width: width / 40),
            Text(
              name,
              style: TextStyle(
                  color: context.colors.black,
                  fontSize: 15.sp,
                  fontFamily: 'Gilroy_Medium'),
            ),
            const Spacer(),
            SizedBox(width: width / 100),
            Icon(Icons.arrow_forward_ios,
                color: context.colors.grey, size: 17.sp),
            SizedBox(width: width / 15),
          ],
        ),
      ),
    );
  }
}
