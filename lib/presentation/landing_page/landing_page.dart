import 'package:flutter/material.dart';
import 'package:rayyan_s_application4/core/app_export.dart';
import 'package:rayyan_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:rayyan_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rayyan_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:rayyan_s_application4/widgets/custom_elevated_button.dart';
import 'controller/landing_controller.dart';
import 'models/landing_model.dart';
import 'models/userprofile1_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'widgets/userprofile1_item_widget.dart';
import 'widgets/userprofile_item_widget.dart';

// ignore_for_file: must_be_immutable
class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);

  LandingController controller = Get.put(LandingController(LandingModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                height: 627.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  SizedBox(
                      width: double.maxFinite,
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildUserProfile(),
                                SizedBox(height: 16.v),
                                _buildJoinUsBar(),
                                SizedBox(height: 25.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 16.h),
                                    child: Text("lbl_our_impact".tr,
                                        style:
                                            CustomTextStyles.titleLargeGray900))
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildEightyFive(),
                            SizedBox(height: 1.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 19.h),
                                child: _buildEightyThree(
                                    text1: "lbl_22".tr, text2: "lbl_12".tr)),
                            SizedBox(height: 2.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 19.h),
                                child: _buildEightyThree(
                                    text1: "lbl_28".tr, text2: "lbl_16".tr)),
                            SizedBox(height: 2.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 19.h),
                                child: _buildEightyThree(
                                    text1: "lbl_32".tr, text2: "lbl_18".tr)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 19.h),
                                child: _buildEightyThree(
                                    text1: "lbl_36".tr, text2: "lbl_22".tr)),
                            SizedBox(
                                height: 408.v,
                                width: 358.h,
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 19.h),
                                              child: Text("lbl_50".tr,
                                                  style: theme.textTheme
                                                      .displayMedium))),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 19.h, right: 279.h),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_42".tr,
                                                        style: theme.textTheme
                                                            .displayMedium),
                                                    SizedBox(height: 1.v),
                                                    Text("lbl_46".tr,
                                                        style: theme.textTheme
                                                            .displayMedium),
                                                    SizedBox(height: 1.v),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text("lbl_48".tr,
                                                            style: theme
                                                                .textTheme
                                                                .displayMedium))
                                                  ]))),
                                      _buildSeventyNine(),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 280.h,
                                                  top: 3.v,
                                                  right: 20.h),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text("lbl_26".tr,
                                                        style: theme.textTheme
                                                            .displayMedium),
                                                    SizedBox(height: 3.v),
                                                    Text("lbl_28".tr,
                                                        style: theme.textTheme
                                                            .displayMedium),
                                                    Text("lbl_30".tr,
                                                        style: theme.textTheme
                                                            .displayMedium)
                                                  ])))
                                    ]))
                          ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_lemillion".tr, margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMingcuteNotificationFill,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Expanded(
        child: SizedBox(
            height: 300.v,
            child: Obx(() => ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 3.h);
                },
                itemCount: controller
                    .landingModelObj.value.userprofileItemList.value.length,
                itemBuilder: (context, index) {
                  UserprofileItemModel model = controller
                      .landingModelObj.value.userprofileItemList.value[index];
                  return UserprofileItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildJoinUsBar() {
    return Container(
        height: 111.v,
        width: 374.h,
        margin: EdgeInsets.only(left: 8.h),
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle323,
              height: 111.v,
              width: 374.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 23.h, right: 106.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 244.h,
                            child: Text("msg_ready_to_make_a".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleLargeGray900)),
                        SizedBox(height: 3.v),
                        CustomElevatedButton(
                            width: 142.h,
                            text: "lbl_join_us".tr,
                            onPressed: () {
                              onTapJoinUs();
                            })
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildEightyFive() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildEighty(dynamicText1: "lbl_16".tr, dynamicText2: "lbl_14".tr),
          _buildEighty(dynamicText1: "lbl_08".tr, dynamicText2: "lbl_04".tr)
        ]));
  }

  /// Section Widget
  Widget _buildSeventyNine() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
            height: 223.v,
            width: 358.h,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 20.h),
                      child: Text("lbl_32".tr,
                          style: theme.textTheme.displayMedium))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                      height: 222.v,
                      child: Obx(() => ListView.separated(
                          padding: EdgeInsets.only(top: 54.v),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 1.h);
                          },
                          itemCount: controller.landingModelObj.value
                              .userprofile1ItemList.value.length,
                          itemBuilder: (context, index) {
                            Userprofile1ItemModel model = controller
                                .landingModelObj
                                .value
                                .userprofile1ItemList
                                .value[index];
                            return Userprofile1ItemWidget(model);
                          }))))
            ])));
  }

  /// Common widget
  Widget _buildEighty({
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return SizedBox(
        height: 37.v,
        width: 58.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Text(dynamicText1,
                  style: theme.textTheme.displayMedium!
                      .copyWith(color: appTheme.whiteA700))),
          Align(
              alignment: Alignment.topCenter,
              child: Text(dynamicText2,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displayMedium!
                      .copyWith(color: appTheme.whiteA700)))
        ]));
  }

  /// Common widget
  Widget _buildEightyThree({
    required String text1,
    required String text2,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(text1,
          style: theme.textTheme.displayMedium!
              .copyWith(color: appTheme.whiteA700)),
      Text(text2,
          style: theme.textTheme.displayMedium!
              .copyWith(color: appTheme.whiteA700))
    ]);
  }

  /// Navigates to the signUpPathScreen when the action is triggered.
  onTapJoinUs() {
    Get.toNamed(
      AppRoutes.signUpPathScreen,
    );
  }
}
