import 'controller/notification_activity_controller.dart';
import 'package:flutter/material.dart';
import 'package:tushar_kokane_s_application1/core/app_export.dart';
import 'package:tushar_kokane_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:tushar_kokane_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:tushar_kokane_s_application1/widgets/app_bar/custom_app_bar.dart';

class NotificationActivityScreen
    extends GetWidget<NotificationActivityController> {
  const NotificationActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 11.v),
                child: Column(children: [
                  _buildActivityDetails(
                      transactionText: "msg_transaction_nike".tr,
                      descriptionText: "msg_culpa_cillum_consectetur".tr,
                      timeText: "msg_april_30_2014_1_01".tr,
                      onTapArrowLeft: () {
                        onTapArrowLeft1();
                      }),
                  _buildActivityDetails(
                      transactionText: "msg_transaction_nike2".tr,
                      descriptionText: "msg_culpa_cillum_consectetur".tr,
                      timeText: "msg_april_30_2014_1_01".tr),
                  SizedBox(height: 5.v),
                  _buildActivityDetails(
                      transactionText: "msg_transaction_nike3".tr,
                      descriptionText: "msg_culpa_cillum_consectetur".tr,
                      timeText: "msg_april_30_2014_1_01".tr)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_activity".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Common widget
  Widget _buildActivityDetails({
    required String transactionText,
    required String descriptionText,
    required String timeText,
    Function? onTapArrowLeft,
  }) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 94.v),
                  onTap: () {
                    onTapArrowLeft!.call();
                  }),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(transactionText,
                                style: theme.textTheme.titleSmall!.copyWith(
                                    color: theme.colorScheme.onPrimary
                                        .withOpacity(1))),
                            SizedBox(height: 11.v),
                            SizedBox(
                                width: 305.h,
                                child: Text(descriptionText,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                        color: appTheme.blueGray300,
                                        height: 1.80))),
                            SizedBox(height: 9.v),
                            Text(timeText,
                                style: CustomTextStyles.bodySmallOnPrimary10
                                    .copyWith(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(1)))
                          ])))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the previous screen.
  onTapArrowLeft1() {
    Get.back();
  }
}
