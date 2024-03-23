import 'package:calipay/components/constants.dart';
import 'package:calipay/components/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Service extends StatelessWidget {
  final dynamic icon;
  final String service;
  final String to;
  const Service(
      {super.key, required this.to, required this.icon, required this.service});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(to),
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(13.sp),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99),
                  color: const Color.fromARGB(76, 104, 184, 250)),
              child: Icon(
                icon,
                color: CustomColor.PlushBlue,
              )),
          SizedBox(height: 6.sp),
          Txt(
            text: service,
            fontFamily: "Poppins",
            size: 12.sp,
            color: CustomColor.Slate,
          )
        ],
      ),
    );
  }
}
