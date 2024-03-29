import 'package:get/get.dart';

class ScreenManager extends GetxController {
  RxInt index = 0.obs;
  RxInt indexj = 0.obs;
  void set(int i, int j) {
    index.value = i;
    indexj.value = j;
  }
}
