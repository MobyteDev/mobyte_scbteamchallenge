import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:mobyte_scbteamchallenge/di/locator.dart';

import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/profile/models/enum_document_check.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/profile/profile_page/bloc/profile_page_bloc.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/notifications/document_reminder.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/options_lists/value_element.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/app_bar/custom_appbar.dart';

import 'package:mobyte_scbteamchallenge/utils/enstring.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';
import 'package:provider/provider.dart';

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
      builder: (_, __) => BlocProvider(
        create: (context) => getIt<ProfilePageBloc>(),
        child: BlocBuilder<ProfilePageBloc, ProfilePageState>(
          builder: (context, state) => state.maybeWhen(
            (user) => Scaffold(
              backgroundColor: context.colors.white,
              appBar: CustomAppBar(
                  false, context.colors.white, "", context.colors.black,
                  height: height / 15),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Image.asset("assets/images/sovcom.png",
                          height: height / 10),
                    ),
                    SizedBox(height: height / 70),
                    Text(
                      user.name,
                      style: TextStyle(
                          color: context.colors.black,
                          fontFamily: 'Gilroy_Bold',
                          fontSize: 16.sp),
                    ),
                    SizedBox(height: height / 20),
                    GestureDetector(
                      onTap: () {
                        share();
                      },
                      child: documnetReminderWidget(user.documents,
                          context.colors.blue, context.colors.white),
                    ),
                    SizedBox(height: height / 25),
                    Row(
                      children: [
                        SizedBox(width: width / 20),
                        Text(
                          "Аккаунт:",
                          style: TextStyle(
                              color: context.colors.grey,
                              fontSize: 13.sp,
                              fontFamily: 'Gilroy_Bold'),
                        ),
                      ],
                    ),
                    SizedBox(height: height / 40),
                    ValueElement(
                      image: "assets/images/BillingPayment.png",
                      name: user.name,
                      onTap: () {},
                    ),
                    SizedBox(height: height / 30),
                    ValueElement(
                      image: "assets/images/BillingPayment.png",
                      name: user.email,
                      onTap: () {},
                    ),
                    SizedBox(height: height / 30),
                    ValueElement(
                      image: "assets/images/BillingPayment.png",
                      name: "Пароль установлен",
                      onTap: () {},
                    ),
                    SizedBox(height: height / 30),
                    ValueElement(
                      image: "assets/images/Language.png",
                      name: "Привязанные карты",
                      onTap: () {},
                    ),
                    SizedBox(height: height / 30),
                    ValueElement(
                      image: "assets/images/FAQ.png",
                      name: "Документы",
                      onTap: () {},
                    ),
                    SizedBox(height: height / 25),
                    Row(
                      children: [
                        SizedBox(width: width / 20),
                        Text(
                          "Настройки:",
                          style: TextStyle(
                              color: context.colors.grey,
                              fontSize: 13.sp,
                              fontFamily: 'Gilroy_Bold'),
                        ),
                      ],
                    ),
                    SizedBox(height: height / 30),
                    GestureDetector(
                      onTap: () {},
                      child: darkmode("assets/images/darkmode.png", "",
                          LanguageEn.darkmode),
                    ),
                    SizedBox(height: height / 40),
                    ValueElement(
                      image: "assets/images/support.png",
                      name: "Поддержка",
                      onTap: () {},
                    ),
                    SizedBox(height: height / 40),
                    ValueElement(
                      image: "assets/images/Overall Loss.png",
                      name: "Выйти из аккаунта",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            orElse: Container.new,
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
                  Provider.of<ColorNotifier>(context, listen: false)
                      .setIsDark(val);
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
