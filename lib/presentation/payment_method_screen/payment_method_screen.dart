import 'controller/payment_method_controller.dart';
import 'package:flutter/material.dart';
import 'package:tushar_kokane_s_application1/core/app_export.dart';
import 'package:tushar_kokane_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:tushar_kokane_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:tushar_kokane_s_application1/widgets/app_bar/custom_app_bar.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  _buildPaymentOptionPaypal(
                      paypalIcon: ImageConstant.imgCreditCardIcon,
                      paypalText: "msg_credit_card_or_debit".tr,
                      onTapPaymentOptionPaypal: () {
                        onTapPaymentOption();
                      }),
                  _buildPaymentOptionPaypal(
                      paypalIcon: ImageConstant.imgPaypalIcon,
                      paypalText: "lbl_paypal".tr),
                  SizedBox(height: 5.v),
                  _buildPaymentOptionPaypal(
                      paypalIcon: ImageConstant.imgAirplanePrimary,
                      paypalText: "lbl_bank_transfer".tr)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_payment".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Common widget
  Widget _buildPaymentOptionPaypal({
    required String paypalIcon,
    required String paypalText,
    Function? onTapPaymentOptionPaypal,
  }) {
    return GestureDetector(
        onTap: () {
          onTapPaymentOptionPaypal!.call();
        },
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Row(children: [
              CustomImageView(
                  imagePath: paypalIcon,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 4.v),
                  child: Text(paypalText,
                      style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.onPrimary.withOpacity(1))))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the chooseCreditOrDebitCardScreen when the action is triggered.
  onTapPaymentOption() {
    Get.toNamed(
      AppRoutes.chooseCreditOrDebitCardScreen,
    );
  }
}
