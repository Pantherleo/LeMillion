import 'package:flutter/material.dart';
import 'package:rayyan_s_application4/core/app_export.dart';
import '../controller/sign_up_page_four_controller.dart';
import '../models/userprofile3_item_model.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  var controller = Get.find<SignUpPageFourController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.h,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 117.v,
          width: 100.h,
          margin: EdgeInsets.only(bottom: 22.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.h,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0.05, -0.07),
                          end: Alignment(1, 1),
                          colors: [
                            appTheme.yellow800,
                            appTheme.yellow800.withOpacity(0.5),
                            theme.colorScheme.errorContainer,
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Obx(
                      () => Text(
                        userprofile3ItemModelObj.childrenReported!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 59.v,
                  width: 85.h,
                  margin: EdgeInsets.only(
                    top: 20.v,
                    right: 3.h,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
