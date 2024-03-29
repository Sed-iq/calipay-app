// Personal Product listing
import 'package:calipay/components/constants.dart';
import 'package:calipay/components/pop.dart';
import 'package:calipay/components/product_card.dart';
import 'package:calipay/components/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

class Products extends StatelessWidget {
  var search = TextEditingController();
  Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.slightGrey,
      body: SafeArea(
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
                                  icon:
                                      const Icon(FontAwesome.angle_left_solid)),
                              const SizedBox(width: 10),
                              Txt(
                                text: "All your products",
                                size: 20.sp,
                                weight: FontWeight.bold,
                                color: CustomColor.Slate,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: search,
                        cursorColor: CustomColor.PlushBlue,
                        decoration: InputDecoration(
                            hintText: "Search your products...",
                            fillColor: Colors.white,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 3),
                              child: IconButton(
                                  style: IconButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
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
                    ),
                    SizedBox(height: 30.sp),
                    Wrap(
                      runSpacing: 10.sp,
                      spacing: 10.sp,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: const <Widget>[
                        Personal_ProductCard(
                          title: "Rare Jelly Fish Sting antedote.",
                          image: "Jellyfish.jpg",
                          price: "20",
                        ),
                        Personal_ProductCard(
                          title: "Tour of the Arid landscape",
                          image: "Desert.jpg",
                          price: "10",
                        ),
                      ],
                    )
                  ])))),
    );
  }
}
