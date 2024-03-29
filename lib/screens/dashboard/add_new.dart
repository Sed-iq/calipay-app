import 'package:calipay/components/service.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

// New Panel

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(15.sp),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Wrap(
              spacing: 30,
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 20.sp,
              children: [
                Service(
                  to: RouteConstants.NEW_CUSTOMER,
                  icon: Bootstrap.people_fill,
                  service: "New Customer",
                ),
                Service(
                  to: RouteConstants.NEW_SUPPLIER,
                  icon: Iconsax.truck_fast_bold,
                  service: "New Supplier",
                ),
                Service(
                  to: RouteConstants.NEW_EXPENSE,
                  icon: Iconsax.receipt_minus_outline,
                  service: "New Expense",
                ),
                Service(
                  to: RouteConstants.NEW_PRODUCT,
                  icon: Iconsax.box_add_outline,
                  service: "New Product",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
