// Onboarding screen
import 'package:calipay/components/constants.dart';
import 'package:calipay/components/txt.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();
  int index = 0;

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: Stack(
            children: [
              PageView(
                onPageChanged: (i) => setState(() => index = i),
                controller: controller,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Image.asset("$ass/undraw_heavy_box_agqi.png",
                              scale: 2.5.sp)),
                      const SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Txt(
                              text: "Keep track",
                              size: 23.sp,
                              weight: FontWeight.bold,
                              color: CustomColor.Slate,
                            ),
                            const SizedBox(height: 10),
                            WTxt(
                              color: Colors.black,
                              size: 14.2.sp,
                              overflow: TextOverflow.visible,
                              text:
                                  "We help you keep account of the amount of goods in your inventory and help you manage sales of goods.",
                            )
                          ],
                        ),
                      )
                    ],
                  ).animate().slideY(begin: 0.5, end: 0).fadeIn(),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                                "$ass/undraw_Credit_card_re_blml.png",
                                scale: 2.5.sp)),
                        const SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 26.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Txt(
                                text: "Point of Sale",
                                size: 23.sp,
                                weight: FontWeight.bold,
                                color: CustomColor.Slate,
                              ),
                              const SizedBox(height: 10),
                              WTxt(
                                color: Colors.black,
                                size: 14.2.sp,
                                overflow: TextOverflow.visible,
                                text:
                                    "We offer POS service for businesses and personal enterprise alike, customers can purchase goods with their debit or credit cards",
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                                "$ass/undraw_shopping_app_flsj.png",
                                scale: 2.5.sp)),
                        const SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 26.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Txt(
                                text: "Manage Customers",
                                size: 23.sp,
                                weight: FontWeight.bold,
                                color: CustomColor.Slate,
                              ),
                              const SizedBox(height: 10),
                              WTxt(
                                  color: Colors.black,
                                  size: 14.2.sp,
                                  overflow: TextOverflow.visible,
                                  text:
                                      "Keep track of your customers, what they've bought from you and manage new customers information for as and easy customer relations.")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextButton(
                    onPressed: () => Get.toNamed(RouteConstants.GREETINGS),
                    child: const Txt(
                      text: "Skip",
                      size: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          )),
      bottomSheet: Container(
          height: 80,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(dotWidth: 11.sp, dotHeight: 11.sp),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      shadowColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.white),
                  onPressed: () {
                    if (index >= 2) {
                      // Take to next page
                      Get.toNamed(RouteConstants.GREETINGS);
                    }
                    controller.nextPage(duration: 200.ms, curve: Curves.linear);
                  },
                  child: Txt(
                    text: (index >= 2) ? "Get Started" : "Next",
                    size: 14.sp,
                    color: Colors.blue,
                  ))
            ],
          )),
    );
  }
}
