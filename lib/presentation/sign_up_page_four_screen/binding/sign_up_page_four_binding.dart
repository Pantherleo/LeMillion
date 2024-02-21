import '../controller/sign_up_page_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpPageFourScreen.
///
/// This class ensures that the SignUpPageFourController is created when the
/// SignUpPageFourScreen is first loaded.
class SignUpPageFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpPageFourController());
  }
}
