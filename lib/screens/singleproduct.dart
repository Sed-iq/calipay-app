// View single product
import 'package:calipay/components/cart.dart';
import 'package:calipay/components/cartmanager.dart';
import 'package:calipay/components/constants.dart';
import 'package:calipay/components/header.dart';
import 'package:calipay/components/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var cart = Get.find<CartManager>();
  @override
  void dispose() {
    super.dispose();
    cart.setCurrentCart({});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.slightGrey,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeaderWith(
              title: "Product",
              With: CartWidget(),
            ),
            SizedBox(height: 25.sp),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.sp),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: Image(
                      image:
                          AssetImage("$ass/${cart.currentCartInfo["image"]}"))),
            ),
            SizedBox(height: 13.sp),
            Txt(
              horPad: 14.sp,
              text: cart.currentCartInfo["title"],
              size: 21.sp,
              weight: FontWeight.bold,
              color: Colors.black,
            ),
            Txt(
              horPad: 12.sp,
              text: "\$${cart.currentCartInfo["price"]}",
              size: 15.sp,
              // weight: FontWeight.bold,
              color: Colors.black,
            ),
            SizedBox(height: 11.sp),
            WTxt(
              horPad: 12.sp,
              size: 17.5.sp,
              text:
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor fugit doloresreprehenderit nemo quos dolorem ullam necessitatibus laudantium rerum veniam.Hic accusantium alias aliquid quas dolores consequuntur delectus quia similique!",
              overflow: TextOverflow.visible,
              color: Colors.black,
            ),
            SizedBox(height: 15.sp),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.sp),
              child: TextButton(
                onPressed: () {
                  cart.addItem({
                    "title": cart.currentCartInfo["title"],
                    "image": cart.currentCartInfo["image"],
                    "price": cart.currentCartInfo["price"],
                  });
                },
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: CustomColor.PlushBlue),
                child: Txt(
                  text: "Add to Cart",
                  size: 14.sp,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
