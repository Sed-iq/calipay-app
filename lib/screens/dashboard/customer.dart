import 'package:calipay/components/constants.dart';
import 'package:calipay/components/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customer extends StatelessWidget {
  final String name;
  final String address;
  final String phone;
  const Customer(
      {super.key,
      required this.name,
      required this.phone,
      required this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13.sp, vertical: 13),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade100),
          borderRadius: BorderRadius.circular(9)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: CustomColor.Slate,
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Txt(
                        text: name,
                        color: Colors.black,
                        weight: FontWeight.bold,
                        size: 15.sp,
                      ),
                      Txt(
                        text: phone,
                        color: Colors.grey.shade700,
                        size: 13.sp,
                      ),
                      Text(
                        address,
                        overflow: TextOverflow.visible,
                        style: TextStyle(color: Colors.grey.shade700),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: CustomColor.PlushBlue,
              ),
              icon: Icon(
                Icons.call,
                size: 15.sp,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}

class Sales extends StatelessWidget {
  final String product;
  final int? amount;
  final int price;
  const Sales(
      {super.key, required this.product, this.amount, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13.sp, vertical: 13),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(9)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                const SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Txt(
                      text: product,
                      color: Colors.black,
                      weight: FontWeight.bold,
                      size: 15.sp,
                    ),
                    (amount != null)
                        ? Txt(
                            text: "$amount",
                            color: Colors.grey.shade700,
                            size: 13.sp,
                          )
                        : Container(),
                    Text(
                      "\$$price",
                      overflow: TextOverflow.visible,
                      style: TextStyle(color: Colors.grey.shade700),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
