import 'package:calipay/components/constants.dart';
import 'package:calipay/components/txt.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Greetings extends StatelessWidget {
  const Greetings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text.rich(TextSpan(
                    text: "Welcome to ",
                    style: TextStyle(
                      color: CustomColor.Slate,
                      fontSize: 18.9.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                          text: "CaliPay",
                          style: TextStyle(
                            color: CustomColor.PrimaryBlue,
                            fontSize: 18.9.sp,
                            fontWeight: FontWeight.bold,
                          ))
                    ])),
                Txt(
                  text: "Join us today.",
                  size: 13.sp,
                  verPad: 6.sp,
                  color: Colors.black,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                padding:
                    EdgeInsets.symmetric(vertical: 20.sp, horizontal: 13.sp),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 13.sp),
                            backgroundColor: CustomColor.PlushBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7))),
                        onPressed: () {
                          Get.toNamed(RouteConstants.REGISTER);
                        },
                        child: const Txt(text: "CREATE A NEW ACCOUNT")),
                    const SizedBox(height: 15),
                    TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 13.sp),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: CustomColor.Slate, width: 1),
                                borderRadius: BorderRadius.circular(7))),
                        onPressed: () {
                          Get.toNamed(RouteConstants.LOGIN);
                        },
                        child: Txt(
                          text: "LOG INTO YOUR ACCOUNT",
                          color: CustomColor.Slate,
                        )),
                  ],
                )),
          )
        ],
      ).animate().slideY(begin: 0.4, end: 0).fadeIn()),
    );
  }
}
