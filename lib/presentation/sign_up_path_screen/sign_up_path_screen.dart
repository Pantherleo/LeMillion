import 'package:flutter/material.dart';
import 'package:rayyan_s_application4/core/app_export.dart';
import 'controller/sign_up_path_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpPathScreen extends GetWidget<SignUpPathController> {
  const SignUpPathScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildHeaderSection(),
              SizedBox(height: 41.v),
              Text(
                "msg_what_describes_you".tr,
                style: CustomTextStyles.headlineSmallPrimaryContainer,
              ),
              SizedBox(height: 37.v),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle22,
                height: 200.adaptSize,
                width: 200.adaptSize,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                "lbl_i_m_a_volunteer".tr,
                style: CustomTextStyles.titleMediumPrimary,
              ),
              SizedBox(height: 40.v),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle23,
                height: 200.adaptSize,
                width: 200.adaptSize,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                "lbl_i_m_an_ngo".tr,
                style: CustomTextStyles.titleMediumPrimary,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 99.h,
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
}
