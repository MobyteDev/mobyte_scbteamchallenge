import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/presentation/widgets/app_bar/custom_appbar.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';
import 'package:provider/provider.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: list.length, vsync: this);
  }

  List<Widget> list = [
    Row(
      children: const [
        Tab(
          icon: Icon(Icons.stacked_bar_chart, color: Colors.black),
        ),
        SizedBox(width: 4),
        Text("Order", style: TextStyle(color: Colors.black))
      ],
    ),
    Row(
      children: const [
        Tab(
          icon: Icon(Icons.local_activity, color: Colors.white),
        ),
        SizedBox(width: 4),
        Text("History", style: TextStyle(color: Colors.white))
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      builder: (_, __) => Scaffold(
        backgroundColor: context.colors.white,
        appBar: CustomAppBar(true, context.colors.white, "Order", context.colors.black,
            height: height / 15),
     
      ),
    );
  }
}
