import 'package:rayyan_s_application4/core/app_export.dart';
import 'package:rayyan_s_application4/presentation/sign_up_page_screen/models/sign_up_page_model.dart';

/// A controller class for the SignUpPageScreen.
///
/// This class manages the state of the SignUpPageScreen, including the
/// current signUpPageModelObj
class SignUpPageController extends GetxController {
  Rx<SignUpPageModel> signUpPageModelObj = SignUpPageModel().obs;
}
