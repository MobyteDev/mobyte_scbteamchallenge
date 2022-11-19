import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/di/locator.dart';
import 'package:mobyte_scbteamchallenge/navigation/auto_router.gr.dart';
import 'package:mobyte_scbteamchallenge/utils/app_colors.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ColorNotifier>.value(
      value: getIt<ColorNotifier>(),
      child: Consumer<ColorNotifier>(
        builder: (context, value, child) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return DefaultTextHeightBehavior(
                textHeightBehavior: const TextHeightBehavior(
                  leadingDistribution: TextLeadingDistribution.even,
                ),
                child: MaterialApp.router(
                  title: 'Monethochka',
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    colorScheme:
                        ColorScheme.fromSeed(seedColor: AppColors.pink),
                  ),
                  routerDelegate: _appRouter.delegate(),
                  routeInformationParser: _appRouter.defaultRouteParser(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
