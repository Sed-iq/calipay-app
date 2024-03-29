// Payment Page
import 'package:calipay/components/constants.dart';
import 'package:calipay/components/header.dart';
import 'package:calipay/components/txt.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.slightGrey,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Header(title: "Select Payment method"),
            SizedBox(
              height: 20.sp,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.sp),
                child: const Column(
                  children: [
                    Options(
                      brandIcon: Brands.paypal,
                      method: "Paypal",
                    ),
                    Options(
                      brandIcon: Brands.google_pay,
                      method: "Google Pay",
                    ),
                    Options(
                      brandIcon: Brands.mastercard,
                      method: "MasterCard",
                    ),
                    Options(
                      brandIcon: Brands.visa,
                      method: "Visa",
                    ),
                    Options(
                      brandIcon: Brands.apple_pay,
                      method: "ApplePay",
                    ),
                  ],
                )).animate().fadeIn()
          ],
        ),
      )),
    );
  }
}

class Options extends StatelessWidget {
  final String brandIcon;
  final String method;
  const Options({super.key, required this.brandIcon, required this.method});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(RouteConstants.REGISTER),
      child: Container(
        width: Get.width,
        margin: EdgeInsets.only(bottom: 19.sp),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
        ),
        padding: EdgeInsets.all(13.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Brand(brandIcon),
                const SizedBox(
                  width: 10,
                ),
                Txt(
                  text: method,
                  color: CustomColor.Slate,
                  size: 16.5.sp,
                  weight: FontWeight.bold,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
