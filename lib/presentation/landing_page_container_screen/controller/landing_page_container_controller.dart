import 'package:rayyan_s_application4/core/app_export.dart';
import 'package:rayyan_s_application4/presentation/landing_page_container_screen/models/landing_page_container_model.dart';

/// A controller class for the LandingPageContainerScreen.
///
/// This class manages the state of the LandingPageContainerScreen, including the
/// current landingPageContainerModelObj
class LandingPageContainerController extends GetxController {
  Rx<LandingPageContainerModel> landingPageContainerModelObj =
      LandingPageContainerModel().obs;
}
