import '../controller/sign_up_page_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpPageOneScreen.
///
/// This class ensures that the SignUpPageOneController is created when the
/// SignUpPageOneScreen is first loaded.
class SignUpPageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpPageOneController());
  }
}
