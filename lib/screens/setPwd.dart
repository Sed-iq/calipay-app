// Setting password
import 'package:calipay/components/constants.dart';
import 'package:calipay/components/named_inputs.dart';
import 'package:calipay/components/txt.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SetPwd extends StatefulWidget {
  const SetPwd({super.key});

  @override
  State<SetPwd> createState() => _SetPwdState();
}

class _SetPwdState extends State<SetPwd> {
  final TextEditingController password = TextEditingController();
  final TextEditingController re_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 110.sp),
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
                        text: "Set new password",
                        size: 27.sp,
                        weight: FontWeight.w700,
                        color: CustomColor.PlushBlue,
                      ),
                      Txt(
                        verPad: 3,
                        text: "Create a new password to log into Calipay",
                        size: 14.4.sp,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 30.sp,
                      ),
                      PassworInput(
                        controller: password,
                        label: "Password",
                        type: TextInputType.visiblePassword,
                        hint: "****",
                      ),
                      PassworInput(
                        controller: re_password,
                        label: "Repeat Password",
                        type: TextInputType.visiblePassword,
                        hint: "****",
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
              TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 13.sp),
                      backgroundColor: CustomColor.PlushBlue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                  onPressed: () {
                    Get.until((route) {
                      if (route.settings.name == RouteConstants.LOGIN) {
                        return true;
                      } else {
                        return false;
                      }
                    });
                  },
                  child: Txt(
                    text: "CHANGE PASSWORD",
                    size: 14.sp,
                  )),
              const SizedBox(height: 0),
            ]),
      ),
    );
  }
}
