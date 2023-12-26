import 'package:tushar_kokane_s_application1/core/app_export.dart';
import 'package:tushar_kokane_s_application1/presentation/dashboard_page/models/dashboard_model.dart';

/// A controller class for the DashboardPage.
///
/// This class manages the state of the DashboardPage, including the
/// current dashboardModelObj
class DashboardController extends GetxController {
  DashboardController(this.dashboardModelObj);

  Rx<DashboardModel> dashboardModelObj;

  Rx<int> sliderIndex = 0.obs;
}
