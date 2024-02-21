import 'package:flutter/material.dart';
import 'package:rayyan_s_application4/core/app_export.dart';
import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary.withOpacity(1),
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(child: _buildRecentOrders()))));
  }

  /// Section Widget
  Widget _buildRecentOrders() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Opacity(
                opacity: 0.2,
                child: SizedBox(
                    height: 956.v,
                    width: 416.h,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                    height: 393.v,
                                    width: 188.h,
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 88.h),
                                              child: _buildClientTestimonials(
                                                  image1: ImageConstant
                                                      .imgRectangle14,
                                                  image2: ImageConstant
                                                      .imgRectangle15)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 88.h),
                                              child: _buildClientTestimonials(
                                                  image1: ImageConstant
                                                      .imgRectangle16,
                                                  image2: ImageConstant
                                                      .imgRectangle17))
                                        ])),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 14.h, top: 31.v),
                                    child: _buildClientTestimonials(
                                        image1: ImageConstant.imgRectangle10,
                                        image2: ImageConstant.imgRectangle13)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 14.h, bottom: 31.v),
                                    child: _buildClientTestimonials(
                                        image1: ImageConstant.imgRectangle11,
                                        image2: ImageConstant.imgRectangle12))
                              ])),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 751.v),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle17,
                                            height: 174.v,
                                            width: 100.h,
                                            radius: BorderRadius.circular(20.h),
                                            margin: EdgeInsets.only(
                                                top: 31.v, right: 7.h))),
                                    Expanded(
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle15,
                                            height: 174.v,
                                            width: 100.h,
                                            radius: BorderRadius.circular(20.h),
                                            margin: EdgeInsets.only(
                                                left: 7.h,
                                                right: 7.h,
                                                bottom: 31.v))),
                                    Expanded(
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle13,
                                            height: 174.v,
                                            width: 100.h,
                                            radius: BorderRadius.circular(20.h),
                                            margin: EdgeInsets.only(
                                                left: 7.h,
                                                top: 31.v,
                                                right: 7.h))),
                                    Expanded(
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle12,
                                            height: 174.v,
                                            width: 100.h,
                                            radius: BorderRadius.circular(20.h),
                                            margin: EdgeInsets.only(
                                                left: 7.h, bottom: 31.v)))
                                  ]))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              height: 393.v,
                              width: 416.h,
                              margin: EdgeInsets.only(top: 187.v),
                              child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle10174x100,
                                        height: 174.v,
                                        width: 100.h,
                                        radius: BorderRadius.circular(20.h),
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(
                                            top: 31.v, right: 88.h)),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            height: 393.v,
                                            width: double.maxFinite,
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle15174x100,
                                                                height: 174.v,
                                                                width: 100.h,
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        20.h),
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            31.v)),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle13174x100,
                                                                height: 174.v,
                                                                width: 100.h,
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        20.h),
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 14
                                                                            .h,
                                                                        top: 31
                                                                            .v))
                                                          ])),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle14174x100,
                                                                height: 174.v,
                                                                width: 100.h,
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        20.h)),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle11174x100,
                                                                height: 174.v,
                                                                width: 100.h,
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        20.h),
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 128
                                                                            .h))
                                                          ])),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 55.h,
                                                                  right: 69.h,
                                                                  bottom: 5.v),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgLogo,
                                                                    height:
                                                                        59.v,
                                                                    width:
                                                                        155.h),
                                                                SizedBox(
                                                                    height:
                                                                        2.v),
                                                                Text(
                                                                    "lbl_lemillion"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .displayMediumBrunoAceSCYellow800)
                                                              ]))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle16174x100,
                                                      height: 174.v,
                                                      width: 100.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                              20.h),
                                                      alignment:
                                                          Alignment.topLeft,
                                                      margin: EdgeInsets.only(
                                                          top: 31.v)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle17174x100,
                                                      height: 174.v,
                                                      width: 100.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                              20.h),
                                                      alignment:
                                                          Alignment.bottomLeft),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle12174x100,
                                                      height: 174.v,
                                                      width: 100.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                              20.h),
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      margin: EdgeInsets.only(
                                                          bottom: 31.v))
                                                ])))
                                  ])))
                    ])))));
  }

  /// Common widget
  Widget _buildClientTestimonials({
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
}
