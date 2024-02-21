import 'package:flutter/material.dart';
import 'package:rayyan_s_application4/core/app_export.dart';
import '../controller/sign_up_page_four_controller.dart';
import '../models/userprofile2_item_model.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  var controller = Get.find<SignUpPageFourController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse5,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 5.v,
                    bottom: 2.v,
                  ),
                  child: Obx(
                    () => Text(
                      userprofile2ItemModelObj.userName!.value,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgPhDotsThree,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle26,
            height: 200.v,
            width: 390.h,
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(7.h),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 137.h,
                  margin: EdgeInsets.only(top: 2.v),
                  child: Obx(
                    () => Text(
                      userprofile2ItemModelObj.postDate!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgFrame1,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 4.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgBitcoinIconsShareOutline,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 4.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrame2,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 4.v),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
