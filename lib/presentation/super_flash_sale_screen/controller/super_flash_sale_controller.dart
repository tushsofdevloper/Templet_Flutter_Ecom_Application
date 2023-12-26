import 'package:tushar_kokane_s_application1/core/app_export.dart';
import 'package:tushar_kokane_s_application1/presentation/super_flash_sale_screen/models/super_flash_sale_model.dart';

/// A controller class for the SuperFlashSaleScreen.
///
/// This class manages the state of the SuperFlashSaleScreen, including the
/// current superFlashSaleModelObj
class SuperFlashSaleController extends GetxController {
  Rx<SuperFlashSaleModel> superFlashSaleModelObj = SuperFlashSaleModel().obs;
}
