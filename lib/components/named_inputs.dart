import 'package:calipay/components/constants.dart';
import 'package:calipay/components/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NormalInput extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType? type;
  final int? maxLines;
  final TextEditingController controller;
  const NormalInput({
    super.key,
    this.type,
    this.maxLines,
    required this.label,
    required this.controller,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Txt(
            text: label,
            color: Colors.black,
            size: 14.sp,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            maxLines: maxLines ?? 1,
            keyboardType: type,
            controller: controller,
            cursorColor: CustomColor.PlushBlue,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey.shade500),
              filled: true,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: BorderSide(color: CustomColor.PlushBlue)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: BorderSide.none),
              fillColor: Colors.grey.shade50,
            ),
          )
        ],
      ),
    );
  }
}

class PassworInput extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType? type;
  final TextEditingController controller;
  const PassworInput({
    super.key,
    this.type,
    required this.label,
    required this.controller,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Txt(
            text: label,
            color: Colors.black,
            size: 14.sp,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true,
            keyboardType: type,
            controller: controller,
            cursorColor: CustomColor.PlushBlue,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey.shade500),
              filled: true,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: BorderSide(color: CustomColor.PlushBlue)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: BorderSide.none),
              fillColor: Colors.grey.shade50,
            ),
          )
        ],
      ),
    );
  }
}
