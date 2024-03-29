import 'package:calipay/components/constants.dart';
import 'package:calipay/components/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(FontAwesome.angle_left_solid)),
              const SizedBox(width: 10),
              Txt(
                text: title,
                size: 20.sp,
                weight: FontWeight.bold,
                color: CustomColor.Slate,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HeaderWith extends StatelessWidget {
  final String title;
  // ignore: non_constant_identifier_names
  final Widget With;
  // ignore: non_constant_identifier_names
  const HeaderWith({super.key, required this.With, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(FontAwesome.angle_left_solid)),
              const SizedBox(width: 10),
              Txt(
                text: title,
                size: 20.sp,
                weight: FontWeight.bold,
                color: CustomColor.Slate,
              ),
            ],
          ),
          With
        ],
      ),
    );
  }
}
