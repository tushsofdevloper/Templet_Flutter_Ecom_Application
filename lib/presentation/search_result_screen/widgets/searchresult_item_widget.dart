import '../controller/search_result_controller.dart';
import '../models/searchresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tushar_kokane_s_application1/core/app_export.dart';
import 'package:tushar_kokane_s_application1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class SearchresultItemWidget extends StatelessWidget {
  SearchresultItemWidget(
    this.searchresultItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchresultItemModel searchresultItemModelObj;

  var controller = Get.find<SearchResultController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBlue50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: searchresultItemModelObj.image!.value,
              height: 133.adaptSize,
              width: 133.adaptSize,
              radius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 107.h,
            child: Obx(
              () => Text(
                searchresultItemModelObj.nikeAirMaxReact!.value,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.labelLarge!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          CustomRatingBar(
            ignoreGestures: true,
            initialRating: 4,
          ),
          SizedBox(height: 18.v),
          Obx(
            () => Text(
              searchresultItemModelObj.price!.value,
              style: CustomTextStyles.labelLargePrimary,
            ),
          ),
          SizedBox(height: 5.v),
          Row(
            children: [
              Obx(
                () => Text(
                  searchresultItemModelObj.oldPrice!.value,
                  style: CustomTextStyles.bodySmall10.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    searchresultItemModelObj.offer!.value,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
