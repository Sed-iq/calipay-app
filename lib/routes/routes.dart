import 'package:calipay/screens/cart.dart';
import 'package:calipay/screens/create/new_customer.dart';
import 'package:calipay/screens/create/new_expense.dart';
import 'package:calipay/screens/create/new_product.dart';
import 'package:calipay/screens/create/new_supplier.dart';
import 'package:calipay/screens/dashboard.dart';
import 'package:calipay/screens/dashboard/expenses.dart';
import 'package:calipay/screens/dashboard/orders.dart';
import 'package:calipay/screens/dashboard/sales.dart';
import 'package:calipay/screens/dashboard/suppliers.dart';
import 'package:calipay/screens/greetings.dart';
import 'package:calipay/screens/onboarding.dart';
import 'package:calipay/screens/payment.dart';
import 'package:calipay/screens/pos.dart';
import 'package:calipay/screens/products.dart';
import 'package:calipay/screens/recover_password.dart';
import 'package:calipay/screens/register.dart';
import 'package:calipay/screens/scan.dart';
import 'package:calipay/screens/setPwd.dart';
import 'package:calipay/screens/singleproduct.dart';
import 'package:calipay/screens/subscription.dart';
import 'package:calipay/screens/verify.dart';
import "package:get/get.dart";
import 'package:calipay/routes/route_constants.dart';
import 'package:calipay/screens/login.dart';

class Routes {
  static Duration duration = 200.milliseconds;
  static Transition transition = Transition.rightToLeftWithFade;
  static final List<GetPage> pageRoutes = [
    GetPage(
        name: RouteConstants.LOGIN,
        transition: transition,
        transitionDuration: duration,
        page: () => const Login()),
    GetPage(
        name: RouteConstants.REGISTER,
        transition: transition,
        transitionDuration: duration,
        page: () => const Register()),
    GetPage(
        name: RouteConstants.ONBOARDING,
        transition: transition,
        transitionDuration: duration,
        page: () => const Onboarding()),
    GetPage(
        name: RouteConstants.GREETINGS,
        transition: transition,
        transitionDuration: duration,
        page: () => const Greetings()),
    GetPage(
        name: RouteConstants.RECOVER_PASSWORD,
        transition: transition,
        transitionDuration: duration,
        page: () => const RecoverPassword()),
    GetPage(
        name: RouteConstants.VERIFY,
        transition: transition,
        transitionDuration: duration,
        page: () => const Verify()),
    GetPage(
        name: RouteConstants.SETPWD,
        transition: transition,
        transitionDuration: duration,
        page: () => const SetPwd()),
    GetPage(
        name: RouteConstants.DASHBOARD,
        transition: transition,
        transitionDuration: duration,
        page: () => const Dashboard()),
    GetPage(
        name: RouteConstants.SUPPLIERS,
        transition: transition,
        transitionDuration: duration,
        page: () => const Suppliers()),
    GetPage(
        name: RouteConstants.NEW_CUSTOMER,
        transition: transition,
        transitionDuration: duration,
        page: () => const New_Customer()),
    GetPage(
        name: RouteConstants.NEW_SUPPLIER,
        transition: transition,
        transitionDuration: duration,
        page: () => const New_Supplier()),
    GetPage(
        name: RouteConstants.NEW_PRODUCT,
        transition: transition,
        transitionDuration: duration,
        page: () => const New_Product()),
    GetPage(
        name: RouteConstants.NEW_EXPENSE,
        transition: transition,
        transitionDuration: duration,
        page: () => const New_Expense()),
    GetPage(
        name: RouteConstants.POS,
        transition: transition,
        transitionDuration: duration,
        page: () => const POS()),
    GetPage(
        name: RouteConstants.PRODUCTS,
        transition: transition,
        transitionDuration: duration,
        page: () => Products()),
    GetPage(
        name: RouteConstants.PRODUCT,
        transition: transition,
        transitionDuration: duration,
        page: () => const Product()),
    GetPage(
        name: RouteConstants.CART,
        transition: transition,
        transitionDuration: duration,
        page: () => const CartListing()),
    GetPage(
        name: RouteConstants.SALES,
        transition: transition,
        transitionDuration: duration,
        page: () => SalesReport()),
    GetPage(
        name: RouteConstants.EXPENSES,
        transition: transition,
        transitionDuration: duration,
        page: () => Expense_Report()),
    GetPage(
        name: RouteConstants.ORDER,
        transition: transition,
        transitionDuration: duration,
        page: () => Order()),
    GetPage(
        name: RouteConstants.SUBSCRIPTION,
        transition: transition,
        transitionDuration: duration,
        page: () => const Subscription()),
    GetPage(
        name: RouteConstants.PAYMENT,
        transition: transition,
        transitionDuration: duration,
        page: () => const Payment()),
  ];
}
