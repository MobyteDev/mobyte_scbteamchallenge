import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/swiper.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Swiper(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.blue,
      body: Center(
        child: Text(
          "GoCrypto",
          style: TextStyle(
            color: context.colors.white,
            fontFamily: 'Gilroy_Bold',
            fontSize: 35.sp,
          ),
        ),
      ),
    );
  }
}
