// ignore_for_file: camel_case_types

import 'package:calipay/components/cartmanager.dart';
import 'package:calipay/components/constants.dart';
import 'package:calipay/components/named_inputs.dart';
import 'package:calipay/components/txt.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class New_Product extends StatefulWidget {
  const New_Product({super.key});

  @override
  State<New_Product> createState() => _New_ProductState();
}

class _New_ProductState extends State<New_Product> {
  var cartManager = Get.find<CartManager>();
  Map data = {};
  String? image;
  @override
  void dispose() {
    super.dispose();
    cartManager.setCurrentCart({}); // Clears it
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      data = cartManager.currentCartInfo;
    });
    if (data["title"] != null) {
      title.text = data["title"];
      price.text = data["price"];
      image = data["image"];
    }
  }

  void pop() {
    Get.until((route) {
      if (route.settings.name == RouteConstants.DASHBOARD) {
        return true;
      } else {
        return false;
      }
    });
  }

  var title = TextEditingController();
  var items = TextEditingController();
  var price = TextEditingController();
  var description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: WillPopScope(
          onWillPop: () {
            return Future<bool>(() {
              if (data["title"] == null) {
                Get.until((route) {
                  if (route.settings.name == RouteConstants.DASHBOARD) {
                    return true;
                  } else {
                    return false;
                  }
                });
                return true;
              } else {
                return true;
              }
            });
          },
          child: SafeArea(
              child: SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(bottom: 15.sp),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16, bottom: 16, right: 16, left: 7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                      onPressed: () => pop(),
                                      icon: const Icon(
                                          FontAwesome.angle_left_solid)),
                                  const SizedBox(width: 10),
                                  Txt(
                                    text: "New Product",
                                    size: 20.sp,
                                    weight: FontWeight.bold,
                                    color: CustomColor.Slate,
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(9.sp),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: CustomColor.PlushBlue),
                                child: Image.asset(
                                  '$ass/logo.png',
                                  width: 40,
                                  height: 40,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30.sp,
                        ),
                        (data["image"] == null)
                            ? Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: CircleAvatar(
                                      radius: 70.sp,
                                      backgroundColor: CustomColor.Slate,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 2.sp,
                                    right: Get.width / 3.2,
                                    child: IconButton(
                                        style: IconButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(99),
                                                side: const BorderSide(
                                                    color: Colors.black)),
                                            backgroundColor: Colors.white),
                                        onPressed: () {
                                          // TODO: Added picture upload fxn
                                        },
                                        icon: const Icon(Icons.edit)),
                                  )
                                ],
                              )
                            : Container(
                                margin: EdgeInsets.symmetric(horizontal: 15.sp),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(9),
                                    child: Image(
                                        image: AssetImage("$ass/$image"))),
                              ),
                        SizedBox(
                          height: 30.sp,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              NormalInput(
                                  label: "Name of product",
                                  controller: title,
                                  hint: "John Doe"),
                              NormalInput(
                                  label: "Number of Items available",
                                  controller: items,
                                  type: TextInputType.number,
                                  hint: "25"),
                              NormalInput(
                                  label: "Price per item",
                                  controller: price,
                                  type: TextInputType.number,
                                  hint: "How much does your item cost?"),
                              NormalInput(
                                  label: "Description of product",
                                  controller: description,
                                  maxLines: 5,
                                  hint: "Describe your product"),
                              SizedBox(
                                height: 15.sp,
                              ),
                              TextButton(
                                  style: TextButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 13),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      backgroundColor: CustomColor.PlushBlue),
                                  onPressed: () {},
                                  child: Txt(
                                    text: "Submit",
                                    size: 16.sp,
                                  ))
                            ],
                          ),
                        )
                      ])))),
        ));
  }
}
