import '../controller/sign_up_path_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpPathScreen.
///
/// This class ensures that the SignUpPathController is created when the
/// SignUpPathScreen is first loaded.
class SignUpPathBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpPathController());
  }
}
