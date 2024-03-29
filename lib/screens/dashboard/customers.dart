import 'package:calipay/components/constants.dart';
import 'package:calipay/components/txt.dart';
import 'package:calipay/screens/dashboard/customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customers extends StatefulWidget {
  const Customers({super.key});

  @override
  State<Customers> createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  final TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(bottom: 15.sp),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.sp, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Txt(
                      text: "Customers",
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
              SizedBox(height: 30.sp),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    TextField(
                      controller: search,
                      cursorColor: CustomColor.PlushBlue,
                      decoration: InputDecoration(
                          hintText: "Search...",
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
                              borderSide:
                                  BorderSide(color: CustomColor.PlushBlue)),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    const Wrap(
                      runSpacing: 20,
                      children: [
                        Customer(
                          phone: "08126075692",
                          name: "Sadiq Abdullahi",
                          address: "132, Anyigba Kogi State, Nigeria",
                        ),
                        Customer(
                          phone: "08126075692",
                          name: "Fisayo Fosudo",
                          address: " 40, Lokoja Kogi State Nigeria",
                        ),
                        Customer(
                          phone: "08126075692",
                          name: "Joseph Akpan",
                          address: "Dagana Hotels Mainland Lagos Nigeria",
                        ),
                        Customer(
                          phone: "08126075692",
                          name: "Joseph Akpan",
                          address: "Dagana Hotels Mainland Lagos Nigeria",
                        ),
                        Customer(
                          phone: "08126075692",
                          name: "Joseph Akpan",
                          address: "Dagana Hotels Mainland Lagos Nigeria",
                        ),
                        Customer(
                          phone: "08126075692",
                          name: "Joseph Akpan",
                          address: "Dagana Hotels Mainland Lagos Nigeria",
                        ),
                        Customer(
                          phone: "08126075692",
                          name: "Joseph Akpan",
                          address: "Dagana Hotels Mainland Lagos Nigeria",
                        ),
                        Customer(
                          phone: "08126075692",
                          name: "Joseph Akpan",
                          address: "Dagana Hotels Mainland Lagos Nigeria",
                        ),
                        Customer(
                          phone: "08126075692",
                          name: "Joseph Akpan",
                          address: "Dagana Hotels Mainland Lagos Nigeria",
                        ),
                        Customer(
                          phone: "08126075692",
                          name: "Joseph Akpan",
                          address: "Dagana Hotels Mainland Lagos Nigeria",
                        ),
                        Customer(
                          phone: "08126075692",
                          name: "Joseph Akpan",
                          address: "Dagana Hotels Mainland Lagos Nigeria",
                        ),
                        Customer(
                          phone: "08126075692",
                          name: "Joseph Akpan",
                          address: "Dagana Hotels Mainland Lagos Nigeria",
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ).animate().slideY(begin: 0.24, curve: Curves.easeIn).fadeIn(),
    );
  }
}
