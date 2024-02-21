import '../../../core/app_export.dart';

/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {
  Userprofile3ItemModel({
    this.childrenReported,
    this.id,
  }) {
    childrenReported = childrenReported ?? Rx("Children reported");
    id = id ?? Rx("");
  }

  Rx<String>? childrenReported;

  Rx<String>? id;
}
