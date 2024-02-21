import '../controller/donation_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DonationPageScreen.
///
/// This class ensures that the DonationPageController is created when the
/// DonationPageScreen is first loaded.
class DonationPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DonationPageController());
  }
}
