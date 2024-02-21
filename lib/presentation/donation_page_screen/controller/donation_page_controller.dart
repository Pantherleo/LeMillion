import 'package:rayyan_s_application4/core/app_export.dart';
import 'package:rayyan_s_application4/presentation/donation_page_screen/models/donation_page_model.dart';

/// A controller class for the DonationPageScreen.
///
/// This class manages the state of the DonationPageScreen, including the
/// current donationPageModelObj
class DonationPageController extends GetxController {
  Rx<DonationPageModel> donationPageModelObj = DonationPageModel().obs;
}
