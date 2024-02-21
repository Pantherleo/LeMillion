import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {
  Userprofile2ItemModel({
    this.userName,
    this.postDate,
    this.id,
  }) {
    userName = userName ?? Rx("Userxyz");
    postDate = postDate ?? Rx("12 February\nAligarh, Uttar Pradesh");
    id = id ?? Rx("");
  }

  Rx<String>? userName;

  Rx<String>? postDate;

  Rx<String>? id;
}
