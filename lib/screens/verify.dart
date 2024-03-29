import 'package:calipay/components/constants.dart';
import 'package:calipay/components/named_inputs.dart';
import 'package:calipay/components/nextRouteController.dart';
import 'package:calipay/components/txt.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  final TextEditingController code = TextEditingController();

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
                        text: "Verify account",
                        size: 27.sp,
                        weight: FontWeight.w700,
                        color: CustomColor.PlushBlue,
                      ),
                      SizedBox(
                        height: 7.sp,
                      ),
                      WTxt(
                        overflow: TextOverflow.visible,
                        text: "Please enter the CODE sent to your email.",
                        size: 14.4.sp,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 40.sp,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Pinput(
                          controller: code,
                          obscureText: true,
                          obscuringCharacter: "*",
                          defaultPinTheme: PinTheme(
                              width: 55.sp,
                              height: 50.sp,
                              textStyle: TextStyle(fontSize: 19.sp),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      )
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
            GetBuilder<NextRouteManager>(builder: (controller) {
              return TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 13.sp),
                      backgroundColor: CustomColor.PlushBlue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                  onPressed: () {
                    Get.toNamed(controller.route.value);
                  },
                  child: Txt(
                    text: "VERIFY EMAIL",
                    size: 14.sp,
                  ));
            }),
          ],
        ),
      ),
    );
  }
}
