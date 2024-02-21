import 'package:flutter/material.dart';
import 'package:rayyan_s_application4/core/app_export.dart';
import 'package:rayyan_s_application4/core/utils/validation_functions.dart';
import 'package:rayyan_s_application4/widgets/custom_elevated_button.dart';
import 'package:rayyan_s_application4/widgets/custom_text_form_field.dart';
import 'controller/sign_up_page_one_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpPageOneScreen extends GetWidget<SignUpPageOneController> {
  SignUpPageOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHeader(),
                    SizedBox(height: 41.v),
                    Padding(
                      padding: EdgeInsets.only(left: 50.h),
                      child: Text(
                        "msg_sign_up_to_get_started".tr,
                        style: CustomTextStyles.headlineSmallPrimaryContainer,
                      ),
                    ),
                    SizedBox(height: 88.v),
                    Padding(
                      padding: EdgeInsets.only(left: 39.h),
                      child: Text(
                        "lbl_full_name".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    _buildFullName(),
                    SizedBox(height: 22.v),
                    Padding(
                      padding: EdgeInsets.only(left: 39.h),
                      child: Text(
                        "lbl_email_address".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    _buildEmail(),
                    SizedBox(height: 24.v),
                    Padding(
                      padding: EdgeInsets.only(left: 39.h),
                      child: Text(
                        "lbl_username".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 19.v),
                    _buildUserName(),
                    SizedBox(height: 24.v),
                    Padding(
                      padding: EdgeInsets.only(left: 39.h),
                      child: Text(
                        "lbl_password".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    _buildPassword(),
                    SizedBox(height: 41.v),
                    _buildSignUp(),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 97.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillYellow,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogoWhiteA700,
            height: 43.v,
            width: 112.h,
          ),
          SizedBox(height: 1.v),
          Text(
            "lbl_lemillion".tr,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 9.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName() {
    return Padding(
      padding: EdgeInsets.only(left: 39.h),
      child: CustomTextFormField(
        controller: controller.fullNameController,
        hintText: "lbl_myfullname".tr,
        alignment: Alignment.centerRight,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.only(left: 39.h),
      child: CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_design_test_com".tr,
        textInputType: TextInputType.emailAddress,
        alignment: Alignment.centerRight,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName() {
    return Padding(
      padding: EdgeInsets.only(left: 39.h),
      child: CustomTextFormField(
        controller: controller.userNameController,
        hintText: "lbl_myusername".tr,
        alignment: Alignment.centerRight,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
      padding: EdgeInsets.only(left: 39.h),
      child: Obx(
        () => CustomTextFormField(
          controller: controller.passwordController,
          hintText: "lbl".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          alignment: Alignment.centerRight,
          suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
              margin: EdgeInsets.only(
                left: 30.h,
                right: 13.h,
                bottom: 19.v,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye1,
                height: 13.v,
                width: 20.h,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 32.v,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: controller.isShowPassword.value,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
      height: 50.v,
      text: "lbl_sign_up".tr,
      margin: EdgeInsets.symmetric(horizontal: 48.h),
      buttonStyle: CustomButtonStyles.outlinePrimary,
      buttonTextStyle: CustomTextStyles.headlineSmallGray100,
      alignment: Alignment.center,
    );
  }
}
