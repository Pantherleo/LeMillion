import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.childrenReported,
    this.fiftyFour,
    this.id,
  }) {
    childrenReported = childrenReported ?? Rx("Children reported");
    fiftyFour = fiftyFour ?? Rx("54");
    id = id ?? Rx("");
  }

  Rx<String>? childrenReported;

  Rx<String>? fiftyFour;

  Rx<String>? id;
}
