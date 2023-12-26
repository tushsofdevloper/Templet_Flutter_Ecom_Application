import '../controller/explore_controller.dart';
import '../models/manworkequipment_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tushar_kokane_s_application1/core/app_export.dart';
import 'package:tushar_kokane_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ManworkequipmentItemWidget extends StatelessWidget {
  ManworkequipmentItemWidget(
    this.manworkequipmentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ManworkequipmentItemModel manworkequipmentItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomIconButton(
            height: 70.adaptSize,
            width: 70.adaptSize,
            padding: EdgeInsets.all(23.h),
            child: CustomImageView(
              imagePath: manworkequipmentItemModelObj.manWorkEquipment!.value,
            ),
          ),
        ),
        SizedBox(height: 8.v),
        Obx(
          () => Text(
            manworkequipmentItemModelObj.officeBag!.value,
            style: CustomTextStyles.labelMediumBluegray300,
          ),
        ),
      ],
    );
  }
}
