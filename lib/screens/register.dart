import 'package:calipay/components/constants.dart';
import 'package:calipay/components/named_inputs.dart';
import 'package:calipay/components/nextRouteController.dart';
import 'package:calipay/components/txt.dart';
import 'package:calipay/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController name = TextEditingController();

  final TextEditingController password = TextEditingController();

  final TextEditingController business = TextEditingController();

  final TextEditingController email = TextEditingController();

  final TextEditingController re_password = TextEditingController();

  final TextEditingController phone = TextEditingController();
  final NextRouteManager nextRoute = Get.put(NextRouteManager());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.close)),
                  SizedBox(
                    height: 50.sp,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Txt(
                          text: "Create Account",
                          size: 27.sp,
                          weight: FontWeight.w700,
                          color: CustomColor.PlushBlue,
                        ),
                        Txt(
                          verPad: 3,
                          text: "Open an account with CaliPay",
                          size: 14.4.sp,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 30.sp,
                        ),
                        NormalInput(
                          controller: name,
                          hint: "Surname First",
                          label: "Full Name",
                        ),
                        NormalInput(
                          controller: business,
                          label: "Business Name",
                          hint: "What's your business name?",
                        ),
                        NormalInput(
                          controller: email,
                          label: "Email",
                          type: TextInputType.emailAddress,
                          hint: "john@123.com",
                        ),
                        NormalInput(
                          controller: phone,
                          type: TextInputType.number,
                          label: "Phone Number",
                          hint: "+234 ********",
                        ),
                        PassworInput(
                          controller: password,
                          label: "Password",
                          type: TextInputType.visiblePassword,
                          hint: "****",
                        ),
                        PassworInput(
                          controller: re_password,
                          label: "Repeat Password",
                          type: TextInputType.visiblePassword,
                          hint: "****",
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GetBuilder<NextRouteManager>(builder: (ctrl) {
                      return TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 13.sp),
                              backgroundColor: CustomColor.PlushBlue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7))),
                          onPressed: () {
                            ctrl.set(RouteConstants.DASHBOARD);
                            Get.toNamed(RouteConstants.VERIFY);
                          },
                          child: Txt(
                            text: "CREATE YOUR ACCOUNT",
                            size: 14.sp,
                          ));
                    }),
                    const SizedBox(height: 0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Txt(
                          text: "Do you already have a CaliPay account? ",
                          color: Colors.grey.shade800,
                          align: TextAlign.center,
                          size: 12.sp,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4)),
                            onPressed: () => Get.toNamed(RouteConstants.LOGIN),
                            child: Txt(
                              text: "Sign in here",
                              color: CustomColor.PlushBlue,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
