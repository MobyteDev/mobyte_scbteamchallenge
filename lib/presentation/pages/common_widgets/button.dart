import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Color colorButton;
  final Color buttonTextColor;
  const Button({
    super.key,
    required this.buttonText,
    required this.buttonTextColor,
    required this.colorButton,
  });

  @override
  Widget build(BuildContext ctx) {
    final height = MediaQuery.of(ctx).size.height;
    final width = MediaQuery.of(ctx).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          LayoutBuilder(builder: (context, constraints) {
            return Container(
              height: height / 15,
              width: width / 2.4,
              decoration: BoxDecoration(
                // border: Border.all(color: notifier.getbluecolor),
                color: colorButton,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  buttonText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Gilroy_Medium',
                      fontSize: 15.sp,
                      color: buttonTextColor),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
