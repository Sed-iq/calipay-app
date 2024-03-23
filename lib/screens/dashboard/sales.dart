// Sales report
// ignore_for_file: must_be_immutable

import 'package:calipay/components/constants.dart';
import 'package:calipay/components/header.dart';
import 'package:calipay/screens/dashboard/customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalesReport extends StatelessWidget {
  var search = TextEditingController();
  SalesReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.slightGrey,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              const Header(title: "Sales Report"),
              SizedBox(
                height: 10.sp,
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
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none)),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: Wrap(
                  runSpacing: 20,
                  children: [
                    Sales(product: "BUA cement", amount: 2, price: 200),
                    Sales(
                        product: "Golden Penny Spagetti", amount: 2, price: 40),
                    Sales(product: "Dangote Salt", amount: 5, price: 20),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
