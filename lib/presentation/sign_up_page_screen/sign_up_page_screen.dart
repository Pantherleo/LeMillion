import 'package:flutter/material.dart';
import 'package:rayyan_s_application4/core/app_export.dart';
import 'package:rayyan_s_application4/widgets/custom_elevated_button.dart';
import 'package:rayyan_s_application4/widgets/custom_outlined_button.dart';
import 'controller/sign_up_page_controller.dart';
import 'package:rayyan_s_application4/domain/facebookauth/facebook_auth_helper.dart';
import 'package:rayyan_s_application4/domain/googleauth/google_auth_helper.dart';

class SignUpPageScreen extends GetWidget<SignUpPageController> {
  const SignUpPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildHorizontalScroll(),
                  SizedBox(height: 18.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgLogoYellow800,
                      height: 43.v,
                      width: 112.h),
                  SizedBox(height: 1.v),
                  Text("lbl_lemillion".tr,
                      style: CustomTextStyles.headlineLargeYellow800),
                  SizedBox(height: 41.v),
                  _buildGettingStarted()
                ]))));
  }

  /// Section Widget
  Widget _buildHorizontalScroll() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: SizedBox(
                height: 393.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.centerLeft, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 257.v,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(top: 49.v),
                          decoration:
                              BoxDecoration(color: appTheme.yellow800))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                                height: 393.v,
                                width: 189.h,
                                child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 89.h),
                                          child: _buildPictureColumn(
                                              image1:
                                                  ImageConstant.imgRectangle14,
                                              image2: ImageConstant
                                                  .imgRectangle15)),
                                      Padding(
                                          padding: EdgeInsets.only(right: 89.h),
                                          child: _buildPictureColumn(
                                              image1:
                                                  ImageConstant.imgRectangle16,
                                              image2:
                                                  ImageConstant.imgRectangle17))
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h, top: 31.v),
                                child: _buildPictureColumn(
                                    image1: ImageConstant.imgRectangle10,
                                    image2: ImageConstant.imgRectangle13)),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 14.h, bottom: 31.v),
                                child: _buildPictureColumn(
                                    image1: ImageConstant.imgRectangle11,
                                    image2: ImageConstant.imgRectangle12))
                          ]))
                ]))));
  }

  /// Section Widget
  Widget _buildGettingStarted() {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.customBorderTL30),
        child: Container(
            height: 355.v,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 28.v),
            decoration: AppDecoration.outlinePrimary1
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
            child: Stack(alignment: Alignment.centerRight, children: [
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 46.v),
                      child: SizedBox(width: 100.h, child: Divider()))),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 21.h, right: 1.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 241.h,
                                margin: EdgeInsets.only(right: 72.h),
                                child: Text("msg_be_the_hope_for".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .headlineLargeMontserratPrimaryContainer)),
                            SizedBox(height: 24.v),
                            CustomElevatedButton(
                                height: 50.v,
                                text: "lbl_sign_up".tr,
                                margin: EdgeInsets.only(right: 20.h),
                                buttonStyle: CustomButtonStyles.outlinePrimary,
                                buttonTextStyle:
                                    CustomTextStyles.headlineSmallGray100),
                            SizedBox(height: 16.v),
                            CustomOutlinedButton(
                                text: "lbl_post_a_picture".tr,
                                margin: EdgeInsets.only(right: 20.h)),
                            SizedBox(height: 25.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 89.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("msg_or_sign_up_using".tr,
                                              style: theme.textTheme.bodyLarge),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 8.v, bottom: 9.v),
                                              child: SizedBox(
                                                  width: 110.h,
                                                  child: Divider(indent: 10.h)))
                                        ]))),
                            SizedBox(height: 6.v),
                            Padding(
                                padding: EdgeInsets.only(left: 106.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFacebook,
                                      height: 30.v,
                                      width: 28.h,
                                      onTap: () {
                                        onTapImgFacebook();
                                      }),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGoogle,
                                      height: 30.v,
                                      width: 29.h,
                                      margin: EdgeInsets.only(left: 22.h),
                                      onTap: () {
                                        onTapImgGoogle();
                                      })
                                ]))
                          ])))
            ])));
  }

  /// Common widget
  Widget _buildPictureColumn({
    required String image1,
    required String image2,
  }) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: image1,
              height: 174.v,
              width: 100.h,
              radius: BorderRadius.circular(20.h)),
          SizedBox(height: 14.v),
          CustomImageView(
              imagePath: image2,
              height: 174.v,
              width: 100.h,
              radius: BorderRadius.circular(20.h))
        ]);
  }

  onTapImgFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
