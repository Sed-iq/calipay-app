import 'package:calipay/routes/route_constants.dart';
import 'package:get/get.dart';

void pop() {
  Get.until((route) {
    if (route.settings.name == RouteConstants.DASHBOARD) {
      return true;
    } else {
      return false;
    }
  });
}
