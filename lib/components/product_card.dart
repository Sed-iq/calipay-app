// ignore_for_file: camel_case_types

import 'package:calipay/components/cartmanager.dart';
import 'package:calipay/components/constants.dart';
import 'package:calipay/components/txt.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class Product_Card extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  const Product_Card({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartManager>(
        builder: (controller) => GestureDetector(
              onTap: () {
                controller.setCurrentCart({
                  "title": title,
                  "image": image,
                  "price": price,
                });
                Get.toNamed(RouteConstants.PRODUCT);
              },
              child: Container(
                height: 250.sp,
                width: Get.width / 2.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(5.sp),
                        width: Get.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage("$ass/$image"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.sp, vertical: 6.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WTxt(
                              text: title,
                              overflow: TextOverflow.ellipsis,
                              color: Colors.black,
                              size: 14.sp,
                            ),
                            Txt(
                              text: "\$$price",
                              color: Colors.black,
                              weight: FontWeight.bold,
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: CustomColor.PrimaryBlue,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(9))),
                                onPressed: () {
                                  controller.addItem({
                                    "title": title,
                                    "price": price,
                                    "image": image,
                                  });
                                },
                                child: const Txt(text: "Add to Cart"))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}

class Personal_ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;

  const Personal_ProductCard(
      {super.key,
      required this.title,
      required this.price,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.sp,
      width: Get.width / 2.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(5.sp),
              width: Get.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage("$ass/$image"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 6.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WTxt(
                    text: title,
                    overflow: TextOverflow.ellipsis,
                    color: Colors.black,
                    size: 14.sp,
                  ),
                  Txt(
                    text: "\$$price",
                    color: Colors.black,
                    weight: FontWeight.bold,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: GetBuilder<CartManager>(builder: (controller) {
                            return TextButton(
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    backgroundColor: CustomColor.bgLightBlue),
                                onPressed: () {
                                  controller.currentCartInfo({
                                    "title": title,
                                    "price": price,
                                    "image": image
                                  });
                                  Get.toNamed(RouteConstants.NEW_PRODUCT);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      HeroIcons.pencil,
                                      color: Colors.white,
                                      size: 13.sp,
                                    ),
                                    SizedBox(
                                      width: 4.sp,
                                    ),
                                    Txt(
                                      text: "Edit",
                                      size: 14.sp,
                                    )
                                  ],
                                ));
                          })),
                      IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.red,
                            fixedSize: Size.fromWidth(2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        icon: const Icon(
                          Icons.delete_forever_sharp,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final int index;
  const CartProductCard(
      {super.key,
      required this.price,
      required this.title,
      required this.index,
      required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.sp,
      width: Get.width / 2.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(5.sp),
              width: Get.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage("$ass/$image"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 6.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WTxt(
                    text: title,
                    overflow: TextOverflow.ellipsis,
                    color: Colors.black,
                    size: 14.sp,
                  ),
                  Txt(
                    text: "\$$price",
                    color: Colors.black,
                    weight: FontWeight.bold,
                  ),
                  GetBuilder<CartManager>(builder: (controller) {
                    return TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            backgroundColor: Colors.red),
                        onPressed: () {
                          controller.removeItem(index);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.delete_forever_rounded,
                              color: Colors.white,
                              size: 13.sp,
                            ),
                            SizedBox(
                              width: 4.sp,
                            ),
                            Txt(
                              text: "Remove",
                              size: 14.sp,
                            )
                          ],
                        ));
                  })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RProduct_Card extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  const RProduct_Card({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartManager>(
        builder: (controller) => GestureDetector(
              onTap: () {
                controller.setCurrentCart({
                  "title": title,
                  "image": image,
                  "price": price,
                });
                Get.toNamed(RouteConstants.PRODUCT);
              },
              child: Container(
                height: 150.sp,
                width: Get.width / 2.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(5.sp),
                        width: Get.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage("$ass/$image"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.sp, vertical: 6.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WTxt(
                              text: title,
                              overflow: TextOverflow.ellipsis,
                              color: Colors.black,
                              size: 14.sp,
                            ),
                            Txt(
                              text: "\$$price",
                              color: Colors.black,
                              weight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
