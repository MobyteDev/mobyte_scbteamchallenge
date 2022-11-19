import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/custom_appbar.dart';
import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.white,
        appBar: CustomAppBar(context.colors.white, "", context.colors.black,
            height: height / 15),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset("assets/images/avatar.png",
                    height: height / 10),
              ),
              SizedBox(height: height / 70),
              Text(
                LanguageEn.hirenjoshi,
                style: TextStyle(
                    color: context.colors.black,
                    fontFamily: 'Gilroy_Bold',
                    fontSize: 16.sp),
              ),
              // _profile(),
              SizedBox(height: height / 20),
              GestureDetector(
                onTap: () {
                  share();
                },
                child: invitefriend(
                    context.colors.blue,
                    "Invite Friends\nInvite your friends and get \$20 each.",
                    context.colors.white),
              ),
              // GestureDetector(
              //     onTap: () {
              //       Get.to(const ReferralCode());
              //     },
              //     child: referalcode()),
              SizedBox(height: height / 25),
              Row(
                children: [
                  SizedBox(width: width / 20),
                  Text(
                    LanguageEn.general,
                    style: TextStyle(
                        color: context.colors.grey,
                        fontSize: 13.sp,
                        fontFamily: 'Gilroy_Bold'),
                  ),
                ],
              ),
              SizedBox(height: height / 50),
              // GestureDetector(
              //   onTap: () {
              //     Get.to(const MyAccount());
              //   },
              //   child: iteamlist("assets/images/BillingPayment.png", "",
              //       LanguageEn.myaccount),
              // ),
              SizedBox(height: height / 30),
              // GestureDetector(
              //   onTap: () {
              //     Get.to(const PaymentMethod());
              //   },
              //   child: iteamlist("assets/images/Language.png", "",
              //       LanguageEn.billingpayment),
              // ),
              SizedBox(height: height / 30),
              // GestureDetector(
              //   onTap: () {
              //     Get.to(const FAQ());
              //   },
              //   child: iteamlist(
              //       "assets/images/Settings.png", "", LanguageEn.faqsupport),
              // ),

              SizedBox(height: height / 25),
              Row(
                children: [
                  SizedBox(width: width / 20),
                  Text(
                    LanguageEn.general,
                    style: TextStyle(
                        color: context.colors.grey,
                        fontSize: 13.sp,
                        fontFamily: 'Gilroy_Bold'),
                  ),
                ],
              ),
              SizedBox(height: height / 50),
              // GestureDetector(
              //   onTap: () {
              //     Get.to(const Language());
              //   },
              //   child:
              //       iteamlist("assets/images/FAQ.png", "", LanguageEn.language),
              // ),
              SizedBox(height: height / 40),
              GestureDetector(
                onTap: () {},
                child: darkmode(
                    "assets/images/darkmode.png", "", LanguageEn.darkmode),
              ),
              SizedBox(height: height / 50),
              // GestureDetector(
              //   onTap: () {
              //     Get.to(const Login());
              //   },
              //   child:
              //   iteamlist("assets/images/FAQ.png", "", LanguageEn.logout),
              // ),
              SizedBox(height: height / 50),
              // GestureDetector(
              //   onTap: () {
              //     Get.to(const MessageSupport());
              //   },
              //   child: support(
              //       context.colors.blue,
              //       "We’d love to hear your feedback!\nWe are always looking to improve.",
              //       context.colors.white),
              // )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title');
  }

  Widget invitefriend(colorbutton, buttontext, buttontextcolor) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LayoutBuilder(builder: (context, constraints) {
              return Container(
                height: height / 10,
                width: width / 1.1,
                decoration: BoxDecoration(
                  color: colorbutton!,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/Invitefriends.png",
                        height: height / 20),
                    Text(
                      buttontext!,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'Gilroy_Medium',
                          fontSize: 13.sp,
                          color: buttontextcolor),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12.sp,
                      color: context.colors.white,
                    )
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  // Widget _profile() {
  //   return Row(
  //     children: [
  //       SizedBox(width: width / 20),
  //       Stack(
  //         children: [
  //           Image.asset("assets/images/profile.png", height: height / 14),
  //           Padding(
  //             padding: EdgeInsets.only(top: height / 26, left: width / 12),
  //             child:
  //                 Image.asset("assets/images/Camera.png", height: height / 30),
  //           ),
  //         ],
  //       ),
  //       SizedBox(width: width / 20),
  //       Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             "Sunder Pichai",
  //             style: TextStyle(
  //                 color: context.colors.black,
  //                 fontSize: 15.sp,
  //                 fontFamily: 'Gilroy_Bold'),
  //           ),
  //           Text(
  //             "SunderPichai@yahoo.com",
  //             style: TextStyle(
  //                 color: context.colors.grey,
  //                 fontSize: 12.sp,
  //                 fontFamily: 'Gilroy_Medium'),
  //           ),
  //         ],
  //       ),
  //       const Spacer(),
  //       GestureDetector(
  //         onTap: () {
  //           Get.to(const MyAccount());
  //         },
  //         child: Text(
  //           "Edit",
  //           style: TextStyle(
  //               color: context.colors.blue,
  //               fontFamily: 'Gilroy_Bold',
  //               fontSize: 15.sp),
  //         ),
  //       ),
  //       SizedBox(width: width / 17),
  //     ],
  //   );
  // }

  // Widget referalcode() {
  //   return Container(
  //     color: Colors.transparent,
  //     child: Row(
  //       children: [
  //         SizedBox(width: width / 20),
  //         Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(
  //               "Referral Code",
  //               style: TextStyle(
  //                   color: context.colors.black,
  //                   fontSize: 15.sp,
  //                   fontFamily: 'Gilroy_Bold'),
  //             ),
  //             Text(
  //               "Share your love and get \$10 of free stocks",
  //               style: TextStyle(
  //                   color: context.colors.grey,
  //                   fontSize: 12.sp,
  //                   fontFamily: 'Gilroy_Medium'),
  //             ),
  //           ],
  //         ),
  //         const Spacer(),
  //         Image.asset("assets/images/gift.png", height: height / 30),
  //         SizedBox(width: width / 20),
  //       ],
  //     ),
  //   );
  // }

  Widget iteamlist(image, txt, name) {
    return Container(
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
    );
  }

  Widget darkmode(image, txt, name) {
    return Container(
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
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: context.colors.blue,
              value: context.colors.isDark,
              onChanged: (val) async {
                setState(() {
                  Provider.of<ColorNotifier>(context, listen: false).setIsDark(val);
                });
              },
            ),
          ),
          SizedBox(width: width / 15),
        ],
      ),
    );
  }
}
