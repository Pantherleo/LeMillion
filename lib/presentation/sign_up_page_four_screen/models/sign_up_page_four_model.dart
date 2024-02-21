import '../../../core/app_export.dart';
import 'userprofile2_item_model.dart';
import 'userprofile3_item_model.dart';

/// This class defines the variables used in the [sign_up_page_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUpPageFourModel {
  Rx<List<Userprofile2ItemModel>> userprofile2ItemList = Rx([
    Userprofile2ItemModel(
        userName: "Userxyz".obs,
        postDate: "12 February\nAligarh, Uttar Pradesh".obs),
    Userprofile2ItemModel(
        userName: "akx123".obs,
        postDate: "02 January\nGhaziabad, Uttar Pradesh".obs),
    Userprofile2ItemModel(
        userName: "akx123".obs,
        postDate: "02 January\nGhaziabad, Uttar Pradesh".obs)
  ]);

  Rx<List<Userprofile3ItemModel>> userprofile3ItemList =
      Rx([Userprofile3ItemModel(childrenReported: "Children reported".obs)]);
}
