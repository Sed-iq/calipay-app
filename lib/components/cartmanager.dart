//  Manages cart data

import 'package:get/get.dart';

class CartManager extends GetxController {
  RxList cart = [].obs;
  var currentCartInfo = {}.obs;

  void addItem(Map entry) {
    // ignore: invalid_use_of_protected_member
    cart.value.add(entry); // Entry is entered into the cart
    update();
  }

  void removeItem(int index) {
    cart.removeAt(index);
    update();
  }

  void setCurrentCart(Map currentCart) {
    currentCartInfo.value = currentCart;
  }
}
