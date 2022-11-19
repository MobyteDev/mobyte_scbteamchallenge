import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/custom_appbar.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';
import 'package:provider/provider.dart';

class TermsofService extends StatefulWidget {
  const TermsofService({Key? key}) : super(key: key);

  @override
  State<TermsofService> createState() => _TermsofServiceState();
}

class _TermsofServiceState extends State<TermsofService> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.white,
        appBar: CustomAppBar(
          context.colors.white,
          LanguageEn.termsofservice,
          context.colors.black,
          height: height / 15,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height / 20),
              Container(
                height: height / 1.6,
                color: Colors.transparent,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: width / 20),
                          Text(
                            LanguageEn.lastupdate,
                            style: TextStyle(
                              color: context.colors.grey,
                              fontSize: 15.sp,
                              fontFamily: 'Gilroy_Medium',
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: height / 20),
                      Row(
                        children: [
                          SizedBox(width: width / 20),
                          Text(
                            LanguageEn.terms,
                            style: TextStyle(
                                color: context.colors.black,
                                fontSize: 19.sp,
                                fontFamily: 'Gilroy_Bold'),
                          )
                        ],
                      ),
                      SizedBox(height: height / 50),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width / 19, right: width / 22),
                        child: Text(
                          LanguageEn.termslorem,
                          style: TextStyle(
                              color: context.colors.grey,
                              fontSize: 15.sp,
                              fontFamily: 'Gilroy_Medium'),
                        ),
                      ),
                      SizedBox(height: height / 25),
                      Row(
                        children: [
                          SizedBox(width: width / 20),
                          Text(
                            LanguageEn.uselicense,
                            style: TextStyle(
                                color: context.colors.black,
                                fontSize: 19.sp,
                                fontFamily: 'Gilroy_Bold'),
                          )
                        ],
                      ),
                      SizedBox(height: height / 50),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width / 19, right: width / 22),
                        child: Text(
                          LanguageEn.adipiscingtempus,
                          style: TextStyle(
                            color: context.colors.grey,
                            fontSize: 15.sp,
                            fontFamily: 'Gilroy_Medium',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width / 19, right: width / 22),
                        child: Text(
                          LanguageEn.adipiscingtempus,
                          style: TextStyle(
                            color: context.colors.grey,
                            fontSize: 15.sp,
                            fontFamily: 'Gilroy_Medium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height / 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: button(
                      LanguageEn.declined,
                      context.colors.white,
                      context.colors.blue,
                      context.colors.grey,
                    ),
                  ),
                  SizedBox(width: width / 50),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const BottomHome(),
                      //   ),
                      // );
                    },
                    child: button(
                      LanguageEn.accept,
                      context.colors.blue,
                      context.colors.white,
                      context.colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget button(buttontext, colorbutton, buttontextcolor, bordercolor) {
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
                border: Border.all(color: bordercolor),
                color: colorbutton,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  buttontext,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Gilroy_Medium',
                      fontSize: 15.sp,
                      color: buttontextcolor),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
