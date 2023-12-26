import '../ship_to_screen/widgets/shiptolist_item_widget.dart';
import 'controller/ship_to_controller.dart';
import 'models/shiptolist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tushar_kokane_s_application1/core/app_export.dart';
import 'package:tushar_kokane_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:tushar_kokane_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:tushar_kokane_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tushar_kokane_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:tushar_kokane_s_application1/widgets/custom_elevated_button.dart';

class ShipToScreen extends GetWidget<ShipToController> {
  const ShipToScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 23.v),
                child: Column(
                    children: [SizedBox(height: 4.v), _buildShipToList()])),
            bottomNavigationBar: _buildNextButton()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 14.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_ship_to".tr, margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgPlusIcon,
              margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 14.v))
        ]);
  }

  /// Section Widget
  Widget _buildShipToList() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Obx(() => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 22.v);
                },
                itemCount: controller
                    .shipToModelObj.value.shiptolistItemList.value.length,
                itemBuilder: (context, index) {
                  ShiptolistItemModel model = controller
                      .shipToModelObj.value.shiptolistItemList.value[index];
                  return ShiptolistItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildNextButton() {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        onPressed: () {
          onTapNextButton();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  onTapNextButton() {
    Get.toNamed(
      AppRoutes.paymentMethodScreen,
    );
  }
}
