import 'package:calipay/screens/dashboard.dart';
import 'package:calipay/screens/greetings.dart';
import 'package:calipay/screens/onboarding.dart';
import 'package:calipay/screens/recover_password.dart';
import 'package:calipay/screens/register.dart';
import 'package:calipay/screens/setPwd.dart';
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
  ];
}
