import 'package:calipay/components/cachemanager.dart';
import 'package:calipay/components/cartmanager.dart';
import 'package:calipay/components/constants.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:calipay/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import "package:get/get.dart";
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed(300.ms);
  FlutterNativeSplash.remove();
  runApp(const Base());
}

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  final CacheManager _cacheManager = Get.put(CacheManager());
  final CartManager _cartManager = Get.put(CartManager());
  late SharedPreferences cache;
  @override
  void initState() {
    super.initState();
    init().then((value) => _cacheManager.initialize(cache));
  }

  Future init() async {
    cache = await SharedPreferences.getInstance();
  }

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
