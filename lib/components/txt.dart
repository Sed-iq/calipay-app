import 'package:flutter/material.dart';

class Txt extends StatelessWidget {
  final Color? color;
  final String text;
  final double? size;
  final dynamic weight;
  final double? verPad; // Vertical Padding
  final double? horPad; // Horizontal Padding
  final TextAlign? align;
  final dynamic fontFamily;
  const Txt(
      {super.key,
      required this.text,
      this.size,
      this.weight,
      this.align,
      this.verPad,
      this.horPad,
      this.fontFamily,
      this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(vertical: verPad ?? 0, horizontal: horPad ?? 0),
      child: Text(
        text,
        maxLines: 1,
        textAlign: align ?? TextAlign.start,
        style: TextStyle(
            fontFamily: fontFamily,
            color: color ?? Colors.white,
            fontSize: size,
            fontWeight: weight),
      ),
    );
  }
}

class WTxt extends StatelessWidget {
  final Color? color;
  final String text;
  final double? size;
  final dynamic weight;
  final dynamic align;
  final dynamic fontFamily;
  final TextOverflow overflow;
  const WTxt(
      {super.key,
      required this.text,
      this.size,
      this.weight,
      this.align,
      this.fontFamily,
      required this.overflow,
      this.color});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            overflow: overflow,
            textAlign: align ?? TextAlign.start,
            style: TextStyle(
                fontFamily: fontFamily,
                color: color ?? Colors.white,
                fontSize: size,
                fontWeight: weight),
          ),
        ),
      ],
    );
  }
}
