import 'package:tushar_kokane_s_application1/core/app_export.dart';
import 'package:tushar_kokane_s_application1/presentation/add_payment_screen/models/add_payment_model.dart';

/// A controller class for the AddPaymentScreen.
///
/// This class manages the state of the AddPaymentScreen, including the
/// current addPaymentModelObj
class AddPaymentController extends GetxController {
  Rx<AddPaymentModel> addPaymentModelObj = AddPaymentModel().obs;
}
