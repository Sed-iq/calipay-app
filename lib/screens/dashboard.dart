// Dashboard
// Base dashboard files
import 'package:calipay/components/constants.dart';
import 'package:calipay/components/screenManager.dart';
import 'package:calipay/screens/dashboard/add_new.dart';
import 'package:calipay/screens/dashboard/customers.dart';
import 'package:calipay/screens/dashboard/home.dart';
import 'package:calipay/screens/dashboard/profile.dart';
import 'package:calipay/screens/dashboard/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> screens = [
    const Home(),
    const Customers(),
    const Profile(),
    const Settings()
  ];
  final ScreenManager manager = Get.put(ScreenManager());
  @override
  Widget build(BuildContext context) {
    return GetX<ScreenManager>(builder: (controller) {
      return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
              // ignore: deprecated_member_use
              child: WillPopScope(
                  onWillPop: () {
                    return Future(() {
                      controller.set(0, 0);
                      return false;
                    });
                  },
                  child: screens[controller.index.value])),
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              currentIndex: controller.indexj.value,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                if (index != 2) {
                  if (index >= 3) {
                    controller.set(index - 1, index);
                  } else {
                    controller.set(index, index);
                  }
                } else {
                  showDialog(context: context, builder: (ctx) => const New());
                }
              },
              selectedItemColor: CustomColor.PlushBlue,
              items: [
                const BottomNavigationBarItem(
                    icon: Icon(EvaIcons.home), label: "Home"),
                const BottomNavigationBarItem(
                    icon: Icon(Bootstrap.people_fill), label: "Customers"),
                BottomNavigationBarItem(
                  icon: Icon(
                    Bootstrap.plus_circle_fill,
                    size: 30.sp,
                    color: CustomColor.bgLightBlue,
                  ),
                  label: "",
                ),
                const BottomNavigationBarItem(
                    icon: Icon(Bootstrap.person_fill), label: "Profile"),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "Settings"),
              ]));
    });
  }
}
