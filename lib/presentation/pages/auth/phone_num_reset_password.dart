import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/auth/vericication.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/custom_appbar.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/custtom_button.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class PhoneNumResetPassword extends StatefulWidget {
  const PhoneNumResetPassword({Key? key}) : super(key: key);

  @override
  State<PhoneNumResetPassword> createState() => _PhoneNumResetPasswordState();
}

class _PhoneNumResetPasswordState extends State<PhoneNumResetPassword> {
  String dropdownvalue = '+91';

  // List of items in our dropdown menu
  var items = [
    '+61',
    '+91',
    '+92',
    '+152',
    '+139',
  ];

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
              Row(
                children: [
                  SizedBox(width: width / 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LanguageEn.setupsecondstep,
                        style: TextStyle(
                            color: context.colors.black,
                            fontSize: 24.sp,
                            fontFamily: 'Gilroy_Bold'),
                      ),
                      SizedBox(height: height / 40),
                      Text(
                        LanguageEn.enteryourphonenumber,
                        style: TextStyle(
                            fontSize: 13.5.sp, color: context.colors.grey),
                      ),
                      SizedBox(height: height / 50),
                      verification()
                      // Row(
                      //   children: [
                      //     DropdownButtonHideUnderline(
                      //       child: ButtonTheme(
                      //         child: DropdownButton<String>(
                      //           hint: Image.asset("assets/images/flagfour.png",
                      //               height: height / 25),
                      //           value: _selectedindex,
                      //           onChanged: (newValue) {
                      //             setState(() {
                      //               _selectedindex = newValue;
                      //             });
                      //           },
                      //           items: _myjson.map((Map map) {
                      //             return DropdownMenuItem<String>(
                      //               value: map["id"].toString(),
                      //               child: Row(
                      //                 children: <Widget>[
                      //                   Image.asset(
                      //                     map["image"].toString(),
                      //                     width: 35.w,
                      //                   ),
                      //                 ],
                      //               ),
                      //             );
                      //           }).toList(),
                      //         ),
                      //       ),
                      //     ),
                      //     SizedBox(width: width / 20),
                      //     Container(color: Colors.transparent,
                      //       width: width / 1.6,
                      //       child: Customtextfild.textField(
                      //           "Mobile No",
                      //           context.colors.blue,
                      //           Icons.add,
                      //           context.colors.grey,
                      //           context.colors.black,
                      //           context.colors.black,
                      //           context.colors.grey,45.sp,300.sp),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: height / 11),
              GestureDetector(
                onTap: () {
                  Get.to(
                    const Veryfication(),
                  );
                },
                child: CustomButton(
                  LanguageEn.continuee,
                  context.colors.blue,
                  context.colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget verification() {
    return Container(
      height: height / 15,
      width: width / 1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15.sp),
        ),
        border: Border.all(
          color: context.colors.blue,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: DropdownButton(
              dropdownColor: context.colors.white,
              underline: const SizedBox(),
              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: Icon(
                Icons.arrow_drop_down,
                color:context.colors.black,
              ),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items,
                    style: TextStyle(color:context.colors.black),
                  ),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          SizedBox(width: width / 100),
          Container(
            height: height / 22,
            width: width / 250,
            color: context.colors.grey,
          ),
          SizedBox(width: width / 22),
          Container(
            color: Colors.transparent,
            height: 25.h,
            width: 200.w,
            child: TextField(
              style: TextStyle(color: context.colors.black),
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(border: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }
}
