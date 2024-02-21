import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumMontserratGray900 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.gray900,
      );
  // Display text style
  static get displayMediumBrunoAceSCYellow800 =>
      theme.textTheme.displayMedium!.brunoAceSC.copyWith(
        color: appTheme.yellow800,
        fontSize: 46.fSize,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineLargeMontserratPrimaryContainer =>
      theme.textTheme.headlineLarge!.montserrat.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeYellow800 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.yellow800,
      );
  static get headlineSmallGray100 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray100,
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get headlineSmallPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Title text style
  static get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get brunoAceSC {
    return copyWith(
      fontFamily: 'Bruno Ace SC',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
