import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [landing_page],
/// and is typically used to hold data that is passed between different parts of the application.
class LandingModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        userName: "Userxyz".obs,
        postDate: "12 February\nAligarh, Uttar Pradesh".obs),
    UserprofileItemModel(
        userName: "akx123".obs,
        postDate: "02 January\nGhaziabad, Uttar Pradesh".obs),
    UserprofileItemModel(
        userName: "akx123".obs,
        postDate: "02 January\nGhaziabad, Uttar Pradesh".obs)
  ]);

  Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([
    Userprofile1ItemModel(
        childrenReported: "Children reported".obs, fiftyFour: "54".obs)
  ]);
}
