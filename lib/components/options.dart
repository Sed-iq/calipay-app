import 'package:calipay/components/constants.dart';
import 'package:calipay/components/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Options extends StatelessWidget {
  final String title;
  final String description;
  final IconData ico;
  final Function onPress;
  const Options(
      {super.key,
      required this.title,
      required this.description,
      required this.onPress,
      required this.ico});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 26.sp),
      child: TextButton(
          onPressed: () => onPress(),
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Ink(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: CustomColor.secondaryBlue,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100))),
                    child: Icon(
                      ico,
                      color: CustomColor.PlushBlue,
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Txt(
                        text: title,
                        size: 17,
                        color: CustomColor.Slate,
                        weight: FontWeight.w700,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Txt(
                        text: description,
                        color: CustomColor.Slate,
                      )
                    ],
                  ),
                ],
              ),
              Icon(
                CupertinoIcons.right_chevron,
                size: 15,
                color: CustomColor.PlushBlue,
              )
            ],
          )),
    );
  }
}
