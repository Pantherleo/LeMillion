import 'package:rayyan_s_application4/core/app_export.dart';
import 'package:rayyan_s_application4/presentation/sign_up_path_screen/models/sign_up_path_model.dart';

/// A controller class for the SignUpPathScreen.
///
/// This class manages the state of the SignUpPathScreen, including the
/// current signUpPathModelObj
class SignUpPathController extends GetxController {
  Rx<SignUpPathModel> signUpPathModelObj = SignUpPathModel().obs;
}
