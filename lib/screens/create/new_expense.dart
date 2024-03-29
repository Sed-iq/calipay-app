// ignore_for_file: camel_case_types

import 'package:calipay/components/constants.dart';
import 'package:calipay/components/named_inputs.dart';
import 'package:calipay/components/txt.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class New_Expense extends StatefulWidget {
  const New_Expense({super.key});

  @override
  State<New_Expense> createState() => _New_ExpenseState();
}

class _New_ExpenseState extends State<New_Expense> {
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
  var product = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: WillPopScope(
          onWillPop: () {
            return Future(() {
              Get.until((route) {
                if (route.settings.name == RouteConstants.DASHBOARD) {
                  return true;
                } else {
                  return false;
                }
              });
              return true;
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
                                    text: "New Expense Entry",
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
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              NormalInput(
                                  label: "Title of Expense Report",
                                  controller: title,
                                  hint: "Expense for ?"),
                              NormalInput(
                                  label: "Amount Removed",
                                  controller: items,
                                  type: TextInputType.number,
                                  hint: "25"),
                              NormalInput(
                                  label: "Product",
                                  controller: product,
                                  hint: "What product was this expense for?"),
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
