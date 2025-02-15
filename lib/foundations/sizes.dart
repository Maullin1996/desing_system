import '../design_system.dart';

/// A class that consolidates foundation size definitions for the app.
class DesignSizesFoundation {
  DesignSizesFoundation._(); // Private constructor to prevent instantiation.

  // Widget sizes
  /// The size for cards (refer to [DesignSizes] for details).
  static const double sizeCard = DesignSizes.sizeLG;

  /// The size for action button circles (refer to [DesignSizes] for details).
  static const double sizeCircleActionsCard = DesignSizes.sizeMD;

  /// The base size for spacing between elements (refer to [DesignSizes] for details).
  static const double baseSeparated = DesignSizes.sizeSM;
}