import 'package:get/get.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/landing_page_container_screen/landing_page_container_screen.dart';
import '../presentation/landing_page_container_screen/binding/landing_page_container_binding.dart';
import '../presentation/sign_up_path_screen/sign_up_path_screen.dart';
import '../presentation/sign_up_path_screen/binding/sign_up_path_binding.dart';
import '../presentation/sign_up_page_one_screen/sign_up_page_one_screen.dart';
import '../presentation/sign_up_page_one_screen/binding/sign_up_page_one_binding.dart';
import '../presentation/donation_page_screen/donation_page_screen.dart';
import '../presentation/donation_page_screen/binding/donation_page_binding.dart';
import '../presentation/sign_up_page_four_screen/sign_up_page_four_screen.dart';
import '../presentation/sign_up_page_four_screen/binding/sign_up_page_four_binding.dart';
import '../presentation/sign_up_page_screen/sign_up_page_screen.dart';
import '../presentation/sign_up_page_screen/binding/sign_up_page_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String landingPage = '/landing_page';

  static const String landingPageContainerScreen =
      '/landing_page_container_screen';

  static const String signUpPathScreen = '/sign_up_path_screen';

  static const String signUpPageOneScreen = '/sign_up_page_one_screen';

  static const String donationPageScreen = '/donation_page_screen';

  static const String signUpPageFourScreen = '/sign_up_page_four_screen';

  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: landingPageContainerScreen,
      page: () => LandingPageContainerScreen(),
      bindings: [
        LandingPageContainerBinding(),
      ],
    ),
    GetPage(
      name: signUpPathScreen,
      page: () => SignUpPathScreen(),
      bindings: [
        SignUpPathBinding(),
      ],
    ),
    GetPage(
      name: signUpPageOneScreen,
      page: () => SignUpPageOneScreen(),
      bindings: [
        SignUpPageOneBinding(),
      ],
    ),
    GetPage(
      name: donationPageScreen,
      page: () => DonationPageScreen(),
      bindings: [
        DonationPageBinding(),
      ],
    ),
    GetPage(
      name: signUpPageFourScreen,
      page: () => SignUpPageFourScreen(),
      bindings: [
        SignUpPageFourBinding(),
      ],
    ),
    GetPage(
      name: signUpPageScreen,
      page: () => SignUpPageScreen(),
      bindings: [
        SignUpPageBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
