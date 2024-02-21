import '../controller/landing_page_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LandingPageContainerScreen.
///
/// This class ensures that the LandingPageContainerController is created when the
/// LandingPageContainerScreen is first loaded.
class LandingPageContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LandingPageContainerController());
  }
}
