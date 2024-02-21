import 'package:rayyan_s_application4/core/app_export.dart';
import 'package:rayyan_s_application4/presentation/sign_up_page_one_screen/models/sign_up_page_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpPageOneScreen.
///
/// This class manages the state of the SignUpPageOneScreen, including the
/// current signUpPageOneModelObj
class SignUpPageOneController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignUpPageOneModel> signUpPageOneModelObj = SignUpPageOneModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    emailController.dispose();
    userNameController.dispose();
    passwordController.dispose();
  }
}
