// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomButton extends StatefulWidget {
  final String? buttontext;
  final Color? colorbutton;
  final Color? buttontextcolor;

  const CustomButton(this.buttontext, this.colorbutton, this.buttontextcolor,
      {Key? key})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  get borderRadius => BorderRadius.circular(15);

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LayoutBuilder(builder: (context, constraints) {
              return Container(
                height: height / 15,
                width: width / 1.1,
                decoration: BoxDecoration(
                  color: widget.colorbutton!,
                  borderRadius: borderRadius,
                ),
                child: Center(
                  child: Text(
                    widget.buttontext!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Gilroy_Medium',
                        fontSize: 15.sp,
                        color: widget.buttontextcolor),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
