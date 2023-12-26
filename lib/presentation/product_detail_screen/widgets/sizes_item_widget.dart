import '../controller/product_detail_controller.dart';
import '../models/sizes_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tushar_kokane_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SizesItemWidget extends StatelessWidget {
  SizesItemWidget(
    this.sizesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SizesItemModel sizesItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.adaptSize,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder24,
      ),
      child: Obx(
        () => Text(
          sizesItemModelObj.six!.value,
          style: theme.textTheme.titleSmall,
        ),
      ),
    );
  }
}
