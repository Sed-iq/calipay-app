import 'package:calipay/components/cachemanager.dart';
import 'package:calipay/components/constants.dart';
import 'package:calipay/components/txt.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:calipay/components/service.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CacheManager>(builder: (ctx) {
      return Container(
        color: Colors.grey.shade100,
        padding: EdgeInsets.symmetric(horizontal: 15.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Txt(
                      text: "Hello, Sadiq",
                      size: 25.sp,
                      color: Colors.black,
                      weight: FontWeight.w700,
                    ),
                    Txt(
                      verPad: 6,
                      text: "Welcome, manage your invetories today 💫",
                      color: Colors.grey.shade800,
                      size: 11.sp,
                    )
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(99),
                  child: Image(
                    image: const AssetImage("$ass/pfp.jpeg"),
                    width: 57.sp,
                    height: 57.sp,
                  ),
                ).animate().scale()
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.all(12.sp),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(76, 104, 184, 250),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Bootstrap.briefcase_fill,
                          color: CustomColor.PlushBlue,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Nigo rite supermarket",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Colors.grey.shade800,
                              fontSize: 13.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(13.sp),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(76, 104, 184, 250),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Txt(
                      text: "Plan: Basic",
                      color: Colors.black,
                      weight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.sp),
            Container(
              width: Get.width,
              padding: EdgeInsets.all(14.sp),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Wrap(
                spacing: 60,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  Service(
                    to: RouteConstants.POS,
                    icon: ZondIcons.credit_card,
                    service: "POS",
                  ),
                  Service(
                    to: RouteConstants.ORDER,
                    icon: FontAwesome.cart_shopping_solid,
                    service: "Orders",
                  ),
                  Service(
                    to: RouteConstants.PRODUCTS,
                    icon: Iconsax.box_add_outline,
                    service: "Products",
                  ),
                  Service(
                    to: RouteConstants.SUPPLIERS,
                    icon: Iconsax.truck_fast_bold,
                    service: "Suppliers",
                  ),
                  Service(
                    to: RouteConstants.SALES,
                    icon: Iconsax.receipt_add_bold,
                    service: "Sales",
                  ),
                  Service(
                    to: RouteConstants.EXPENSES,
                    icon: Iconsax.receipt_minus_outline,
                    service: "Expeneses",
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
