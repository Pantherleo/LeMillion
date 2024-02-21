import 'package:flutter/material.dart';
import 'package:rayyan_s_application4/core/app_export.dart';
import '../controller/donation_page_controller.dart';
import '../models/two_item_model.dart';

// ignore: must_be_immutable
class TwoItemWidget extends StatelessWidget {
  TwoItemWidget(
    this.twoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwoItemModel twoItemModelObj;

  var controller = Get.find<DonationPageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      width: 167.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 141.h,
            child: Obx(
              () => Text(
                twoItemModelObj.joinUsText!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          SizedBox(
            width: 126.h,
            child: Obx(
              () => Text(
                twoItemModelObj.serviceText!.value,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumMontserratGray900,
              ),
            ),
          ),
          SizedBox(height: 19.v),
        ],
      ),
    );
  }
}
