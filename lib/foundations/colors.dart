
import 'package:flutter/material.dart';

import '../design_system.dart';


/// A class that consolidates foundation color definitions for the app.
class DesignColorsFoundation {
  DesignColorsFoundation._(); // Private constructor to prevent instantiation.

  // Background colors
  /// The background color used for light themes (refer to [DesignColors] for details).
  static const Color bgGray = DesignColors.light;

  /// The background color used for dark themes (refer to [DesignColors] for details).
  static const Color bgDark = DesignColors.scale06;
  
  /// The primary color  (refer to [DesignColors] for details).
  static const Color primaryColor = DesignColors.primaryColor;
  

  // Button colors
  /// The primary button color (refer to [DesignColors] for details).
  static const Color colorButtonPrimary = DesignColors.primaryColor;
  /// The primary button color (refer to [DesignColors] for details).
  static const Color colorBorderButtonPrimary = DesignColors.scale02;

  /// The secondary button color (refer to [DesignColors] for details).
  static const Color colorButtonSecondary = DesignColors.light;
   /// The secondary button text color (refer to [DesignColors] for details).
  static const Color colorBorderButtonSecondary = DesignColors.strongPrimary;

  /// The secondary button text color (refer to [DesignColors] for details).
  static const Color colorTextButtonPrimary = DesignColors.light;
  /// The secondary button text color (refer to [DesignColors] for details).
  static const Color colorTextButtonSecondary = DesignColors.strongPrimary;
 

  // Text colors
  /// The color for primary text (dark themes) (refer to [DesignColors] for details).
  static const Color darkTextColors = DesignColors.scale06;

  /// The color for primary text (light themes) (refer to [DesignColors] for details).
  static const Color lightTextColors = DesignColors.scale02;

  /// The color for body text (refer to [DesignColors] for details).
  static const Color bodyColor = DesignColors.scale04;

  /// The color for body text content (refer to [DesignColors] for details).
  static const Color bodyTextColor = DesignColors.scale04;

  // Card colors
  /// The background color for cards (refer to [DesignColors] for details).
  static const Color cardBgColor = DesignColors.scale02;

  // Status colors (refer to [WeinDsColors] for details)
  /// The background color for circular cards with a warning status.
  static const Color cardCircularBgColor = DesignColors.statusWarning;

  /// The background color for informational elements.
  static const Color infoBgColor = DesignColors.statusSuccess;

  /// The background color for warning elements.
  static const Color warningBgColor = DesignColors.statusWarning;

  /// The background color for success elements. (alias for infoBgColor)
  static const Color succcessBgColor = DesignColors.statusSuccess;

  /// The background color for danger elements. (alias for errorBgColor)
  static const Color dangerBgColor = DesignColors.statusError;

  /// The background color for error elements.
  static const Color errorBgColor = DesignColors.statusError;
}