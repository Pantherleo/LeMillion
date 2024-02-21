import '../../../core/app_export.dart';
import 'two_item_model.dart';

/// This class defines the variables used in the [donation_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DonationPageModel {
  Rx<List<TwoItemModel>> twoItemList = Rx([
    TwoItemModel(
        joinUsText: "Join us as a volunteer".obs,
        serviceText:
            "Service to others is the rent you pay for your room here on earth"
                .obs),
    TwoItemModel(
        joinUsText: "General support".obs,
        serviceText: "Everyone can be great because everyone can serve.".obs)
  ]);
}
