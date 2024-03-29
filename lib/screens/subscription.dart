// Subscription Page

import 'package:calipay/components/constants.dart';
import 'package:calipay/components/header.dart';
import 'package:calipay/components/txt.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PlanManager extends GetxController {
  var plan = 0.obs;
  void set(int value) {
    plan.value = value;
  }
}

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  var controller = PageController();

  var planManager = Get.put(PlanManager());

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 15.sp),
        height: 80.sp,
        child: Row(
          children: [
            Expanded(
                child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12.sp),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                backgroundColor: CustomColor.PlushBlue,
              ),
              onPressed: () {
                Get.toNamed(RouteConstants.PAYMENT);
              },
              child: Txt(
                text: "Pay Now",
                size: 15.sp,
              ),
            )),
            SizedBox(
              width: 7.sp,
            ),
            TextButton(
                style: TextButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(vertical: 12.sp, horizontal: 12.sp),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: const Color(0xA627A02B),
                ),
                onPressed: () {
                  Get.toNamed(RouteConstants.REGISTER);
                },
                child: Txt(
                  text: "Free Trial",
                  size: 12.sp,
                ))
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.sp),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: HeaderWith(
              title: "Subscription Plans",
              With: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(dotWidth: 11.sp, dotHeight: 11.sp))),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: 80.sp),
          child: PageView(
            onPageChanged: (index) {
              planManager.set(index);
            },
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: const [BronzeSub(), SilverSub(), Gold()],
          ),
        ),
      ),
    );
  }
}

class BronzeSub extends StatefulWidget {
  const BronzeSub({super.key});

  @override
  State<BronzeSub> createState() => _BronzeSubState();
}

class _BronzeSubState extends State<BronzeSub> {
  int plan = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 8.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      backgroundColor: (plan == 0)
                          ? CustomColor.PlushBlue
                          : CustomColor.secondaryBlue),
                  onPressed: () {
                    setState(() {
                      plan = 0;
                    });
                  },
                  child: const Txt(
                    text: "Monthly",
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      backgroundColor: (plan == 1)
                          ? CustomColor.PlushBlue
                          : CustomColor.secondaryBlue),
                  onPressed: () {
                    setState(() {
                      plan = 1;
                    });
                  },
                  child: const Txt(
                    text: "Quarterly",
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      backgroundColor: (plan == 2)
                          ? CustomColor.PlushBlue
                          : CustomColor.secondaryBlue),
                  onPressed: () {
                    setState(() {
                      plan = 2;
                    });
                  },
                  child: const Txt(
                    text: "Annually",
                    color: Colors.white,
                  )),
            ],
          ),
          SizedBox(
            height: 27.sp,
          ),
          Image.asset(
            "$ass/bronze.png",
            width: 140.sp,
            height: 140.sp,
          ).animate().slideY(begin: 0.3, end: 0).fadeIn(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 23.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Txt(
                        text: "Bronze",
                        size: 22.1.sp,
                        weight: FontWeight.bold,
                        color: CustomColor.Slate,
                      ),
                      Icon(
                        Icons.star,
                        size: 23.sp,
                        color: const Color(0xFFFFEB3B),
                      )
                    ],
                  ),
                  (plan == 0)
                      ? Txt(
                          text: "\$5/ month",
                          color: CustomColor.PlushBlue,
                          size: 17.sp,
                          weight: FontWeight.bold,
                        )
                      : Container(),
                  (plan == 1)
                      ? Txt(
                          text: "\$15/ 3months",
                          color: CustomColor.PlushBlue,
                          size: 17.sp,
                          weight: FontWeight.bold,
                        )
                      : Container(),
                  (plan == 2)
                      ? Txt(
                          text: "\$30/ year",
                          color: CustomColor.PlushBlue,
                          size: 17.sp,
                          weight: FontWeight.bold,
                        )
                      : Container(),
                  const SizedBox(height: 23),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Items(
                            text: "1 shop and 1 admin",
                            checked: true,
                          ),
                          Items(
                            text: "Manage customer records",
                            checked: true,
                          ),
                          Items(
                            text: "Track Sales and Supplier records",
                            checked: true,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SilverSub extends StatefulWidget {
  const SilverSub({super.key});

  @override
  State<SilverSub> createState() => _SilverSubState();
}

class _SilverSubState extends State<SilverSub> {
  int plan = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 8.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      backgroundColor: (plan == 0)
                          ? CustomColor.PlushBlue
                          : CustomColor.secondaryBlue),
                  onPressed: () {
                    setState(() {
                      plan = 0;
                    });
                  },
                  child: const Txt(
                    text: "Monthly",
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      backgroundColor: (plan == 1)
                          ? CustomColor.PlushBlue
                          : CustomColor.secondaryBlue),
                  onPressed: () {
                    setState(() {
                      plan = 1;
                    });
                  },
                  child: const Txt(
                    text: "Quarterly",
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      backgroundColor: (plan == 2)
                          ? CustomColor.PlushBlue
                          : CustomColor.secondaryBlue),
                  onPressed: () {
                    setState(() {
                      plan = 2;
                    });
                  },
                  child: const Txt(
                    text: "Annually",
                    color: Colors.white,
                  )),
            ],
          ),
          SizedBox(
            height: 27.sp,
          ),
          Image.asset(
            "$ass/silver.png",
            width: 140.sp,
            height: 140.sp,
          ).animate().slideX(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 23.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Txt(
                        text: "Silver",
                        size: 22.1.sp,
                        weight: FontWeight.bold,
                        color: CustomColor.Slate,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 23.sp,
                            color: const Color(0xFFFFEB3B),
                          ),
                          Icon(
                            Icons.star,
                            size: 23.sp,
                            color: const Color(0xFFFFEB3B),
                          ),
                        ],
                      )
                    ],
                  ),
                  (plan == 0)
                      ? Txt(
                          text: "\$12/ month",
                          color: CustomColor.PlushBlue,
                          size: 17.sp,
                          weight: FontWeight.bold,
                        )
                      : Container(),
                  (plan == 1)
                      ? Txt(
                          text: "\$35/ 3months",
                          color: CustomColor.PlushBlue,
                          size: 17.sp,
                          weight: FontWeight.bold,
                        )
                      : Container(),
                  (plan == 2)
                      ? Txt(
                          text: "\$60/ year",
                          color: CustomColor.PlushBlue,
                          size: 17.sp,
                          weight: FontWeight.bold,
                        )
                      : Container(),
                  const SizedBox(height: 23),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Items(
                            text: "2 shops and 1 admin",
                            checked: true,
                          ),
                          Items(
                            text: "Expense Tracking",
                            checked: true,
                          ),
                          Items(
                            text: "Installment Payment Feature",
                            checked: true,
                          ),
                          Items(
                            text: "QR Code for Product",
                            checked: false,
                          ),
                          Items(
                            text: "Product scanning feature",
                            checked: false,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Gold extends StatefulWidget {
  const Gold({super.key});

  @override
  State<Gold> createState() => _GoldState();
}

class _GoldState extends State<Gold> {
  int plan = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 8.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      backgroundColor: (plan == 0)
                          ? CustomColor.PlushBlue
                          : CustomColor.secondaryBlue),
                  onPressed: () {
                    setState(() {
                      plan = 0;
                    });
                  },
                  child: const Txt(
                    text: "Monthly",
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      backgroundColor: (plan == 1)
                          ? CustomColor.PlushBlue
                          : CustomColor.secondaryBlue),
                  onPressed: () {
                    setState(() {
                      plan = 1;
                    });
                  },
                  child: const Txt(
                    text: "Quarterly",
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      backgroundColor: (plan == 2)
                          ? CustomColor.PlushBlue
                          : CustomColor.secondaryBlue),
                  onPressed: () {
                    setState(() {
                      plan = 2;
                    });
                  },
                  child: const Txt(
                    text: "Annually",
                    color: Colors.white,
                  )),
            ],
          ),
          SizedBox(
            height: 27.sp,
          ),
          Image.asset(
            "$ass/gold.png",
            width: 140.sp,
            height: 140.sp,
          ).animate().scale(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 23.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Txt(
                        text: "Gold",
                        size: 22.1.sp,
                        weight: FontWeight.bold,
                        color: CustomColor.Slate,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 23.sp,
                            color: const Color(0xFFFFEB3B),
                          ),
                          Icon(
                            Icons.star,
                            size: 23.sp,
                            color: const Color(0xFFFFEB3B),
                          ),
                          Icon(
                            Icons.star,
                            size: 23.sp,
                            color: const Color(0xFFFFEB3B),
                          ),
                        ],
                      )
                    ],
                  ),
                  (plan == 0)
                      ? Txt(
                          text: "\$50/ month",
                          color: CustomColor.PlushBlue,
                          size: 17.sp,
                          weight: FontWeight.bold,
                        )
                      : Container(),
                  (plan == 1)
                      ? Txt(
                          text: "\$80/ 3months",
                          color: CustomColor.PlushBlue,
                          size: 17.sp,
                          weight: FontWeight.bold,
                        )
                      : Container(),
                  (plan == 2)
                      ? Txt(
                          text: "\$120/ year",
                          color: CustomColor.PlushBlue,
                          size: 17.sp,
                          weight: FontWeight.bold,
                        )
                      : Container(),
                  const SizedBox(height: 23),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Items(
                            text: "Balance Sheet",
                            checked: true,
                          ),
                          Items(
                            text: "Budget Management",
                            checked: true,
                          ),
                          Items(
                            text: "Account Transaction Chart",
                            checked: true,
                          ),
                          Items(
                            text: "QR Code for Product",
                            checked: true,
                          ),
                          Items(
                            text: "Product scanning feature",
                            checked: true,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Items extends StatelessWidget {
  final String text;
  final bool checked;
  const Items({super.key, required this.text, required this.checked});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16.sp),
      child: Row(
        children: [
          (checked == true)
              ? Icon(
                  Icons.check_circle_rounded,
                  color: CustomColor.PrimaryBlue,
                )
              : Icon(
                  Icons.circle_outlined,
                  color: CustomColor.PrimaryBlue,
                ),
          SizedBox(width: 7.sp),
          Txt(
            text: text,
            color: Colors.black,
            size: 15.5.sp,
          )
        ],
      ),
    );
  }
}
