import 'package:flutter/material.dart';
import 'package:rayyan_s_application4/core/app_export.dart';
import 'package:rayyan_s_application4/presentation/landing_page/landing_page.dart';
import 'package:rayyan_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:rayyan_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rayyan_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:rayyan_s_application4/widgets/custom_bottom_bar.dart';
import 'package:rayyan_s_application4/widgets/custom_elevated_button.dart';
import 'controller/sign_up_page_four_controller.dart';
import 'models/userprofile2_item_model.dart';
import 'models/userprofile3_item_model.dart';
import 'widgets/userprofile2_item_widget.dart';
import 'widgets/userprofile3_item_widget.dart';

// ignore_for_file: must_be_immutable
class SignUpPageFourScreen extends GetWidget<SignUpPageFourController> {
  const SignUpPageFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 800.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildAppBar(),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              _buildUserProfile(),
                              SizedBox(height: 16.v),
                              _buildJoinUsBar(),
                              SizedBox(height: 25.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text(
                                    "lbl_our_impact".tr,
                                    style: CustomTextStyles.titleLargeGray900,
                                  ),
                                ),
                              ),
                              SizedBox(height: 13.v),
                              SizedBox(
                                height: 871.v,
                                width: 358.h,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          right: 21.h,
                                          bottom: 54.v,
                                        ),
                                        child: Text(
                                          "lbl_34".tr,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.displayMedium,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 21.h),
                                        child: Text(
                                          "lbl_36".tr,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.displayMedium,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 279.h,
                                          right: 21.h,
                                          bottom: 114.v,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              "lbl_12".tr,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.displayMedium,
                                            ),
                                            SizedBox(height: 3.v),
                                            Text(
                                              "lbl_16".tr,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.displayMedium,
                                            ),
                                            SizedBox(height: 3.v),
                                            Text(
                                              "lbl_18".tr,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.displayMedium,
                                            ),
                                            SizedBox(height: 3.v),
                                            Text(
                                              "lbl_22".tr,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.displayMedium,
                                            ),
                                            SizedBox(height: 3.v),
                                            Text(
                                              "lbl_26".tr,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.displayMedium,
                                            ),
                                            SizedBox(height: 3.v),
                                            Text(
                                              "lbl_28".tr,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.displayMedium,
                                            ),
                                            SizedBox(height: 1.v),
                                            Text(
                                              "lbl_30".tr,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.displayMedium,
                                            ),
                                            SizedBox(height: 1.v),
                                            Text(
                                              "lbl_32".tr,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.displayMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: 197.v,
                                          right: 21.h,
                                        ),
                                        child: Text(
                                          "lbl_08".tr,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.displayMedium,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: 143.v,
                                          right: 21.h,
                                        ),
                                        child: Text(
                                          "lbl_04".tr,
                                          style: theme.textTheme.displayMedium,
                                        ),
                                      ),
                                    ),
                                    _buildUserProfile1(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup25,
                height: 1036.v,
                width: 60.h,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(left: 36.h),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_lemillion".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMingcuteNotificationFill,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 15.v,
          ),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return SizedBox(
      height: 300.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 3.h,
            );
          },
          itemCount: controller
              .signUpPageFourModelObj.value.userprofile2ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofile2ItemModel model = controller
                .signUpPageFourModelObj.value.userprofile2ItemList.value[index];
            return Userprofile2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildJoinUsBar() {
    return SizedBox(
      height: 111.v,
      width: 374.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle323,
            height: 111.v,
            width: 374.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 23.h,
                right: 106.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 244.h,
                    child: Text(
                      "msg_ready_to_make_a".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleLargeGray900,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  CustomElevatedButton(
                    width: 142.h,
                    text: "lbl_join_us".tr,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile1() {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 870.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(bottom: 730.v),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 1.h,
              );
            },
            itemCount: controller
                .signUpPageFourModelObj.value.userprofile3ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofile3ItemModel model = controller.signUpPageFourModelObj
                  .value.userprofile3ItemList.value[index];
              return Userprofile3ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Camera:
        return AppRoutes.landingPage;
      case BottomBarEnum.Rewind:
        return "/";
      case BottomBarEnum.Thumbsup:
        return "/";
      case BottomBarEnum.Television:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.landingPage:
        return LandingPage();
      default:
        return DefaultWidget();
    }
  }
}
