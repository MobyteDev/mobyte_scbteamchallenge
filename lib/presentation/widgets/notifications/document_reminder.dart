import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/profile/models/enum_document_check.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

Widget documnetReminderWidget(documentsCheck, colorbutton, buttontextcolor) {
  if (documentsCheck == DocumentsCheckEnum.needToUpload) {
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
                    Image.asset("assets/images/withdraw.png",
                        height: height / 20),
                    Text(
                      "Отправьте документы\n для подтверждения статуса акканта",
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
  } else if (documentsCheck == DocumentsCheckEnum.waiting) {
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
                    Image.asset("assets/images/withdraw.png",
                        height: height / 20),
                    Text(
                      "Ожидание подтверждения документов",
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
  } else {
    return Container();
  }
}
