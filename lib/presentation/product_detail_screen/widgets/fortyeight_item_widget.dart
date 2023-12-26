import '../controller/product_detail_controller.dart';
import '../models/fortyeight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tushar_kokane_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FortyeightItemWidget extends StatelessWidget {
  FortyeightItemWidget(
    this.fortyeightItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FortyeightItemModel fortyeightItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgProductImage238x375,
      height: 238.v,
      width: 375.h,
    );
  }
}
