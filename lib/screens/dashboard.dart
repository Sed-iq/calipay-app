// Dashboard
import 'package:calipay/components/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.sp),
              Txt(
                text: "Hello, Sadiq",
                size: 25.sp,
                color: Colors.black,
                weight: FontWeight.w700,
              ),
              Txt(
                text: "Welcome, manage your invetories today 💫.",
                color: Colors.grey.shade800,
                size: 11.sp,
              )
            ],
          ),
        ),
      ),
    );
  }
}
