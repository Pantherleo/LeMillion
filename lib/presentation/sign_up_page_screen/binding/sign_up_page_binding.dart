import '../controller/sign_up_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpPageScreen.
///
/// This class ensures that the SignUpPageController is created when the
/// SignUpPageScreen is first loaded.
class SignUpPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpPageController());
  }
}
