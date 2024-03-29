import 'package:calipay/components/cartmanager.dart';
import 'package:calipay/components/constants.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(RouteConstants.CART);
      },
      child: SizedBox(
        height: 55.spMax,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
                padding: EdgeInsets.all(9.sp),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: CustomColor.PlushBlue),
                child: const Icon(
                  EvaIcons.shopping_cart,
                  color: Colors.white,
                )),
            Positioned(
              top: -0.6,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(5.sp),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(99)),
                child: GetBuilder<CartManager>(builder: (controller) {
                  return Text(
                    controller.cart.length.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
