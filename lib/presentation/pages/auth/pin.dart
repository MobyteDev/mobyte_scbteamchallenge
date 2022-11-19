import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/button.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/custom_appbar.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Pin extends StatefulWidget {
  const Pin({Key? key}) : super(key: key);

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.white,
        appBar: CustomAppBar(
          context.colors.white,
          "",
          context.colors.black,
          height: height / 15,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: width / 15),
              Center(
                child: Text(
                  LanguageEn.createnewpin,
                  style: TextStyle(
                      color: context.colors.black,
                      fontSize: 26.sp,
                      fontFamily: 'Gilroy_Bold'),
                ),
              ),
              SizedBox(height: height / 40),
              Center(
                child: Text(
                  LanguageEn.addingapin,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: context.colors.grey,
                  ),
                ),
              ),
              SizedBox(height: height / 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  otpfild(),
                  SizedBox(width: width / 25),
                  otpfild(),
                  SizedBox(width: width / 25),
                  otpfild(),
                  SizedBox(width: width / 25),
                  otpfild(),
                ],
              ),
              SizedBox(height: height / 1.9),
              GestureDetector(
                  onTap: () {
                    // Get.to(const PhonePassword());
                  },
                  child: Button(
                    buttonText: LanguageEn.continuee,
                    buttonTextColor: context.colors.blue,
                    colorButton:  context.colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget otpfild() {
    return Container(
      height: height / 30,
      width: width / 15,
      decoration: BoxDecoration(
        color:  context.colors.pinAuth,
        borderRadius: BorderRadius.all(
          Radius.circular(15.sp),
        ),
      ),
      child: TextFormField(
        keyboardType: TextInputType.number,
        cursorColor: Theme.of(context).primaryColor,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 14.sp),
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
