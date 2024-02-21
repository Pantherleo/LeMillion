import 'package:flutter/material.dart';
import 'package:rayyan_s_application4/core/app_export.dart';
import 'package:rayyan_s_application4/presentation/landing_page/landing_page.dart';
import 'package:rayyan_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:rayyan_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rayyan_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:rayyan_s_application4/widgets/custom_bottom_bar.dart';
import 'package:rayyan_s_application4/widgets/custom_elevated_button.dart';
import 'controller/donation_page_controller.dart';
import 'models/two_item_model.dart';
import 'widgets/two_item_widget.dart';

// ignore_for_file: must_be_immutable
class DonationPageScreen extends GetWidget<DonationPageController> {
  const DonationPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [
              _buildTwentyNine(),
              SizedBox(height: 18.v),
              _buildThirty(),
              SizedBox(height: 32.v),
              _buildTwo(),
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
  Widget _buildTwentyNine() {
    return SizedBox(
      height: 150.v,
      width: 374.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle324,
            height: 150.v,
            width: 374.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 14.v,
                right: 150.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 208.h,
                    child: Text(
                      "msg_sponsor_a_child_s".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  CustomElevatedButton(
                    text: "lbl_sponsor_now".tr,
                    margin: EdgeInsets.only(right: 60.h),
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
  Widget _buildThirty() {
    return SizedBox(
      height: 150.v,
      width: 374.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle324150x374,
            height: 150.v,
            width: 374.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 14.v,
                right: 98.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 260.h,
                    child: Text(
                      "msg_donate_for_nutritious".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  CustomElevatedButton(
                    width: 148.h,
                    text: "lbl_donate_now".tr,
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
  Widget _buildTwo() {
    return SizedBox(
      height: 222.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 24.h,
            );
          },
          itemCount:
              controller.donationPageModelObj.value.twoItemList.value.length,
          itemBuilder: (context, index) {
            TwoItemModel model =
                controller.donationPageModelObj.value.twoItemList.value[index];
            return TwoItemWidget(
              model,
            );
          },
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
