// Orders
import 'package:calipay/components/constants.dart';
import 'package:calipay/components/header.dart';
import 'package:calipay/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Order extends StatelessWidget {
  var search = TextEditingController();
  Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.slightGrey,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Header(title: "Orders"),
            SizedBox(
              height: 20.sp,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: search,
                cursorColor: CustomColor.PlushBlue,
                decoration: InputDecoration(
                    hintText: "Search for products...",
                    fillColor: Colors.white,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: IconButton(
                          style: IconButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              backgroundColor: CustomColor.PlushBlue),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    ),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: CustomColor.PlushBlue)),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            SizedBox(height: 17.sp),
            Wrap(
              spacing: 10.sp,
              runSpacing: 10.sp,
              children: const [
                RProduct_Card(
                  price: "20",
                  title: "Vase of Tulips",
                  image: "Tulips.jpg",
                ),
                RProduct_Card(
                  price: "20",
                  title: "Vase of Tulips",
                  image: "Tulips.jpg",
                ),
                RProduct_Card(
                  price: "20",
                  title: "Vase of Tulips",
                  image: "Tulips.jpg",
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
