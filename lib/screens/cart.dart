import 'package:calipay/components/cartmanager.dart';
import 'package:calipay/components/constants.dart';
import 'package:calipay/components/header.dart';
import 'package:calipay/components/product_card.dart';
import 'package:calipay/components/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartListing extends StatefulWidget {
  const CartListing({super.key});

  @override
  State<CartListing> createState() => _CartListingState();
}

class _CartListingState extends State<CartListing> {
  var search = TextEditingController();
  var cart = Get.find<CartManager>();
  List<Widget> items() {
    List<Widget> arr = [];
    for (int i = 0; i < cart.cart.length; i++) {
      arr.add(CartProductCard(
        price: cart.cart[i]["price"],
        title: cart.cart[i]["title"],
        image: cart.cart[i]["image"],
        index: i,
      ));
    }
    return arr;
  }

  @override
  Widget build(BuildContext context) {
    items();
    return Scaffold(
      backgroundColor: CustomColor.slightGrey,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Header(title: 'Cart Items'),
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
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Obx(() => (cart.cart.isNotEmpty)
                ? Wrap(
                    spacing: 10,
                    runSpacing: 8,
                    children: items().animate().fadeIn(),
                  )
                : const Txt(
                    text: "Your cart is empty !",
                    color: Colors.black,
                  ))
          ],
        ),
      )),
    );
  }
}
