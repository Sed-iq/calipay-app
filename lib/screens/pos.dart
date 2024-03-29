import 'package:calipay/components/cachemanager.dart';
import 'package:calipay/components/cart.dart';
import 'package:calipay/components/cartmanager.dart';
import 'package:calipay/components/constants.dart';
import 'package:calipay/components/pop.dart';
import 'package:calipay/components/product_card.dart';
import 'package:calipay/components/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class POS extends StatefulWidget {
  const POS({super.key});

  @override
  State<POS> createState() => _POSState();
}

class _POSState extends State<POS> {
  String qrResult = "";
  Future<void> scan() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cacel", true, ScanMode.QR);
      if (!mounted) return;
      setState(() {
        qrResult = qrCode.toString();
      });
    } catch (error) {
      print(error);
    }
  }

  var search = TextEditingController(); // Controller for search keywords
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: GetBuilder<CacheManager>(builder: (cacheController) {
          return SafeArea(
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
                                      icon: const Icon(
                                          FontAwesome.angle_left_solid)),
                                  const SizedBox(width: 10),
                                  Txt(
                                    text: "All Products for Sale",
                                    size: 20.sp,
                                    weight: FontWeight.bold,
                                    color: CustomColor.Slate,
                                  ),
                                ],
                              ),
                              const CartWidget()
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: TextField(
                                  controller: search,
                                  cursorColor: CustomColor.PlushBlue,
                                  decoration: InputDecoration(
                                      hintText: "Search for products...",
                                      fillColor: Colors.white,
                                      suffixIcon: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 3),
                                        child: IconButton(
                                            style: IconButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                backgroundColor:
                                                    CustomColor.PlushBlue),
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.search,
                                              color: Colors.white,
                                            )),
                                      ),
                                      filled: true,
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: CustomColor.PlushBlue)),
                                      border: const OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    scan();
                                  },
                                  icon: Icon(
                                    Bootstrap.qr_code_scan,
                                    color: CustomColor.PlushBlue,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(height: 30.sp),
                        Wrap(
                          runSpacing: 10.sp,
                          spacing: 10.sp,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          children: const <Widget>[
                            Product_Card(
                              title: "Rare Jelly Fish Sting antedote.",
                              image: "Jellyfish.jpg",
                              price: "20",
                            ),
                            Product_Card(
                              title: "Hydrangeas Herbal Tea.",
                              image: "Hydrangeas.jpg",
                              price: "5",
                            ),
                            Product_Card(
                              title: "Hydrangeas Herbal Tea.",
                              image: "Hydrangeas.jpg",
                              price: "5",
                            ),
                          ],
                        )
                      ]))));
        }));
  }
}
