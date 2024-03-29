import 'package:calipay/components/constants.dart';
import 'package:calipay/components/named_inputs.dart';
import 'package:calipay/components/nextRouteController.dart';
import 'package:calipay/components/txt.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({super.key});

  @override
  State<RecoverPassword> createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  final TextEditingController phone = TextEditingController();
  final NextRouteManager manager = Get.put(NextRouteManager());

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
                        text: "Forgot Password?",
                        size: 27.sp,
                        weight: FontWeight.w700,
                        color: CustomColor.PlushBlue,
                      ),
                      SizedBox(
                        height: 7.sp,
                      ),
                      WTxt(
                        overflow: TextOverflow.visible,
                        text:
                            "Please enter your phone number to recover your password",
                        size: 14.4.sp,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      NormalInput(
                        controller: phone,
                        label: "Phone Number",
                        type: TextInputType.phone,
                        hint: "+234 *****",
                      ),
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
            GetBuilder<NextRouteManager>(builder: (ctrl) {
              return TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 13.sp),
                      backgroundColor: CustomColor.PlushBlue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                  onPressed: () {
                    ctrl.set(RouteConstants
                        .SETPWD); // Go to set password after verified
                    Get.toNamed(RouteConstants.VERIFY);
                  },
                  child: Txt(
                    text: "RECOVER PASSWORD",
                    size: 14.sp,
                  ));
            }),
          ],
        ),
      ),
    );
  }
}
