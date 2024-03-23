// ignore_for_file: camel_case_types

import 'package:calipay/components/constants.dart';
import 'package:calipay/components/named_inputs.dart';
import 'package:calipay/components/txt.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void pop() {
    Get.until((route) {
      if (route.settings.name == RouteConstants.DASHBOARD) {
        return true;
      } else {
        return false;
      }
    });
  }

  var fullname = TextEditingController();
  var email = TextEditingController();
  var phone = TextEditingController();
  var address = TextEditingController();
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
                              Txt(
                                horPad: 9.sp,
                                text: "Your Profile",
                                size: 20.sp,
                                weight: FontWeight.bold,
                                color: CustomColor.Slate,
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
                        Stack(
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
                                  label: "FullName",
                                  controller: fullname,
                                  hint: "John Doe"),
                              NormalInput(
                                  label: "Your Email",
                                  controller: email,
                                  type: TextInputType.emailAddress,
                                  hint: "john@doe.com"),
                              NormalInput(
                                  label: "Phone Number",
                                  controller: phone,
                                  hint: "+23480000000"),
                              NormalInput(
                                  label: "Address",
                                  controller: address,
                                  hint: "123 Nowhere street"),
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
