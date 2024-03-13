// Controls the next route after fxn call

import 'package:get/get.dart';

class NextRouteManager extends GetxController {
  var route = "".obs;
  void set(String parameter) {
    route.value = parameter;
  }
}
