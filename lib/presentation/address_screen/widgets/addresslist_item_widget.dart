import '../controller/address_controller.dart';
import '../models/addresslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tushar_kokane_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AddresslistItemWidget extends StatelessWidget {
  AddresslistItemWidget(
    this.addresslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AddresslistItemModel addresslistItemModelObj;

  var controller = Get.find<AddressController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              addresslistItemModelObj.priscekila!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 19.v),
          Container(
            width: 264.h,
            margin: EdgeInsets.only(right: 30.h),
            child: Obx(
              () => Text(
                addresslistItemModelObj.address!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.80,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.v),
          Obx(
            () => Text(
              addresslistItemModelObj.mobileNo!.value,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 19.v),
          Row(
            children: [
              Obx(
                () => Text(
                  addresslistItemModelObj.edit!.value,
                  style: CustomTextStyles.titleSmallPrimary,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.h),
                child: Obx(
                  () => Text(
                    addresslistItemModelObj.delete!.value,
                    style: CustomTextStyles.titleSmallPink300,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
