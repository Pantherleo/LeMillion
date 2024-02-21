import 'package:rayyan_s_application4/core/app_export.dart';
import 'package:rayyan_s_application4/presentation/landing_page/models/landing_model.dart';

/// A controller class for the LandingPage.
///
/// This class manages the state of the LandingPage, including the
/// current landingModelObj
class LandingController extends GetxController {
  LandingController(this.landingModelObj);

  Rx<LandingModel> landingModelObj;
}
