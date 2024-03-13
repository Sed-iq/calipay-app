import 'package:calipay/components/constants.dart';
import 'package:calipay/components/named_inputs.dart';
import 'package:calipay/components/txt.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController email = TextEditingController();

  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 110),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close)),
                SizedBox(
                  height: 50.sp,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WTxt(
                        overflow: TextOverflow.visible,
                        text: "Sign in to your\nAccount",
                        size: 27.sp,
                        weight: FontWeight.w700,
                        color: CustomColor.PlushBlue,
                      ),
                      Txt(
                        verPad: 3,
                        text: "Log into your CaliPay account",
                        size: 14.4.sp,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 30.sp,
                      ),
                      NormalInput(
                        controller: email,
                        label: "Email",
                        type: TextInputType.emailAddress,
                        hint: "john@123.com",
                      ),
                      PassworInput(
                        controller: password,
                        label: "Password",
                        type: TextInputType.visiblePassword,
                        hint: "****",
                      ),
                      TextButton(
                          onPressed: () =>
                              Get.toNamed(RouteConstants.RECOVER_PASSWORD),
                          child: Txt(
                            text: "Forgotten Password?",
                            color: CustomColor.PlushBlue,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
        height: 110,
        child: Column(
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
                  Get.toNamed(RouteConstants.DASHBOARD);
                },
                child: Txt(
                  text: "LOG IN",
                  size: 14.sp,
                )),
            const SizedBox(height: 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Txt(
                  text: "Don't have a CaliPay account? ",
                  color: Colors.grey.shade800,
                  align: TextAlign.center,
                  size: 12.sp,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 4)),
                    onPressed: () => Get.toNamed(RouteConstants.REGISTER),
                    child: Txt(
                      text: "Sign up here",
                      color: CustomColor.PlushBlue,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
