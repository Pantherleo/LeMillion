import 'package:rayyan_s_application4/core/app_export.dart';
import 'package:rayyan_s_application4/presentation/sign_up_page_four_screen/models/sign_up_page_four_model.dart';

/// A controller class for the SignUpPageFourScreen.
///
/// This class manages the state of the SignUpPageFourScreen, including the
/// current signUpPageFourModelObj
class SignUpPageFourController extends GetxController {
  Rx<SignUpPageFourModel> signUpPageFourModelObj = SignUpPageFourModel().obs;
}
