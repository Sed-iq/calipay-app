import 'package:calipay/components/constants.dart';
import 'package:calipay/components/options.dart';
import 'package:calipay/components/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Txt(
                  horPad: 9.sp,
                  text: "Settings",
                  size: 20.sp,
                  weight: FontWeight.bold,
                  color: CustomColor.Slate,
                ),
                Container(
                  padding: EdgeInsets.all(9.sp),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: CustomColor.PlushBlue),
                  child: Image.asset(
                    '$ass/logo.png',
                    width: 40,
                    height: 40,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.sp,
          ),
          Options(
              title: "Edit Product",
              description: "Change the details of any of your products listed",
              onPress: () {},
              ico: Iconsax.edit_2_bold),
          Options(
              title: "Contact Us for Support",
              description: "Report Technical issues to us",
              onPress: () {},
              ico: Iconsax.headphone_bold),
          Options(
              title: "Delete Account",
              description: "Remove you account and details from us",
              onPress: () {},
              ico: Iconsax.trash_bold),
          Options(
              title: "Logout",
              description: "Logout from your Calipay account",
              onPress: () {},
              ico: Icons.logout),
        ],
      ),
    );
  }
}
