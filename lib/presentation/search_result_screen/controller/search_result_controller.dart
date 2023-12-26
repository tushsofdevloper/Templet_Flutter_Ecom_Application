import 'package:tushar_kokane_s_application1/core/app_export.dart';
import 'package:tushar_kokane_s_application1/presentation/search_result_screen/models/search_result_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchResultScreen.
///
/// This class manages the state of the SearchResultScreen, including the
/// current searchResultModelObj
class SearchResultController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchResultModel> searchResultModelObj = SearchResultModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
