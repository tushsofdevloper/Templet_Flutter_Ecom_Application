import '../controller/product_detail_controller.dart';
import '../models/products_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tushar_kokane_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ProductsItemWidget extends StatelessWidget {
  ProductsItemWidget(
    this.productsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductsItemModel productsItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.h,
      child: Obx(
        () => CustomImageView(
          imagePath: productsItemModelObj.productPicture!.value,
          height: 72.adaptSize,
          width: 72.adaptSize,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
      ),
    );
  }
}
