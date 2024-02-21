import 'package:flutter/material.dart';
import 'package:rayyan_s_application4/core/app_export.dart';
import 'package:rayyan_s_application4/presentation/landing_page/landing_page.dart';
import 'package:rayyan_s_application4/widgets/custom_bottom_bar.dart';
import 'controller/landing_page_container_controller.dart';

class LandingPageContainerScreen
    extends GetWidget<LandingPageContainerController> {
  const LandingPageContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.landingPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Camera:
        return AppRoutes.landingPage;
      case BottomBarEnum.Rewind:
        return "/";
      case BottomBarEnum.Thumbsup:
        return "/";
      case BottomBarEnum.Television:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.landingPage:
        return LandingPage();
      default:
        return DefaultWidget();
    }
  }
}
