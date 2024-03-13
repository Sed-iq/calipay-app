import 'package:calipay/components/constants.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:calipay/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import "package:get/get.dart";

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed(300.ms);
  FlutterNativeSplash.remove();
  runApp(const Base());
}

class Base extends StatelessWidget {
  const Base({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (_, child) {
          return GetMaterialApp(
            title: "CaliPay",
            color: Colors.white,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                fontFamily: "OpenSans",
                textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                        foregroundColor: CustomColor.bgGrey)),
                colorScheme: const ColorScheme.light(background: Colors.white)),
            initialRoute: RouteConstants.ONBOARDING,
            getPages: Routes.pageRoutes,
          );
        });
  }
}
