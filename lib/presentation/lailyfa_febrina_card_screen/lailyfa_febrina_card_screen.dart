import 'controller/lailyfa_febrina_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:tushar_kokane_s_application1/core/app_export.dart';
import 'package:tushar_kokane_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:tushar_kokane_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:tushar_kokane_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:tushar_kokane_s_application1/widgets/custom_elevated_button.dart';
import 'package:tushar_kokane_s_application1/widgets/custom_text_form_field.dart';

class LailyfaFebrinaCardScreen extends GetWidget<LailyfaFebrinaCardController> {
  const LailyfaFebrinaCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 18.v),
                child: Column(children: [
                  SizedBox(height: 19.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15.h, right: 15.h, bottom: 5.v),
                              child: Column(children: [
                                _buildCreditCard(),
                                SizedBox(height: 23.v),
                                _buildCardNumber(),
                                SizedBox(height: 24.v),
                                _buildExpirationDate(),
                                SizedBox(height: 29.v),
                                _buildSecurityCode(),
                                SizedBox(height: 23.v),
                                _buildCardHolder()
                              ]))))
                ])),
            bottomNavigationBar: _buildSave()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "msg_lailyfa_febrina".tr,
            margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildCreditCard() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 23.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVolume,
                  height: 22.v,
                  width: 36.h,
                  margin: EdgeInsets.only(left: 3.h)),
              SizedBox(height: 30.v),
              Text("msg_6326_9124".tr, style: theme.textTheme.headlineSmall),
              SizedBox(height: 17.v),
              Row(children: [
                Opacity(
                    opacity: 0.5,
                    child: Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text("lbl_card_holder".tr,
                            style: CustomTextStyles
                                .bodySmallOnPrimaryContainer10))),
                Opacity(
                    opacity: 0.5,
                    child: Padding(
                        padding: EdgeInsets.only(left: 37.h),
                        child: Text("lbl_card_save".tr,
                            style: CustomTextStyles
                                .bodySmallOnPrimaryContainer10)))
              ]),
              SizedBox(height: 1.v),
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text("lbl_lailyfa_febrina".tr,
                        style: CustomTextStyles.labelMediumOnPrimaryContainer)),
                Padding(
                    padding: EdgeInsets.only(left: 32.h, bottom: 3.v),
                    child: Text("lbl_06_24".tr,
                        style: CustomTextStyles.labelMediumOnPrimaryContainer))
              ])
            ]));
  }

  /// Section Widget
  Widget _buildCardNumber() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text("lbl_card_number".tr, style: theme.textTheme.titleSmall)),
      SizedBox(height: 12.v),
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: CustomTextFormField(
              controller: controller.cardNumberController,
              hintText: "msg_1231_2312_3123".tr,
              hintStyle: CustomTextStyles.labelLargeBluegray300SemiBold,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v)))
    ]);
  }

  /// Section Widget
  Widget _buildExpirationDate() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text("lbl_expiration_date".tr,
              style: theme.textTheme.titleSmall)),
      SizedBox(height: 11.v),
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: CustomTextFormField(
              controller: controller.expirationDateController,
              hintText: "lbl_12_12".tr,
              hintStyle: CustomTextStyles.labelLargeBluegray300SemiBold,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v)))
    ]);
  }

  /// Section Widget
  Widget _buildSecurityCode() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_security_code".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 11.v),
      CustomTextFormField(
          controller: controller.securityCodeController,
          hintText: "lbl_1219".tr,
          hintStyle: CustomTextStyles.labelLargeBluegray300SemiBold,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v))
    ]);
  }

  /// Section Widget
  Widget _buildCardHolder() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child:
              Text("lbl_card_holder2".tr, style: theme.textTheme.titleSmall)),
      SizedBox(height: 12.v),
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: CustomTextFormField(
              controller: controller.cardHolderNameController,
              hintText: "lbl_lailyfa_febrina".tr,
              hintStyle: CustomTextStyles.labelLargeBluegray300SemiBold,
              textInputAction: TextInputAction.done,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v)))
    ]);
  }

  /// Section Widget
  Widget _buildSave() {
    return CustomElevatedButton(
        text: "lbl_save".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        onPressed: () {
          onTapSave();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the creditCardAndDebitScreen when the action is triggered.
  onTapSave() {
    Get.toNamed(
      AppRoutes.creditCardAndDebitScreen,
    );
  }
}
