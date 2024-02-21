import '../../../core/app_export.dart';

/// This class is used in the [two_item_widget] screen.
class TwoItemModel {
  TwoItemModel({
    this.joinUsText,
    this.serviceText,
    this.id,
  }) {
    joinUsText = joinUsText ?? Rx("Join us as a volunteer");
    serviceText = serviceText ??
        Rx("Service to others is the rent you pay for your room here on earth");
    id = id ?? Rx("");
  }

  Rx<String>? joinUsText;

  Rx<String>? serviceText;

  Rx<String>? id;
}
