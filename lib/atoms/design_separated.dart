import 'package:flutter/material.dart';
import 'package:desing_system/design_system.dart';
/// A widget that adds vertical spacing between elements in your UI.
class DesignSeparated extends StatelessWidget {
  /// A multiplier for the base separation size.
  final double nSeparated;
  /// Creates a widget that adds vertical spacing between elements.
  const DesignSeparated({super.key, required this.nSeparated});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: nSeparated*DesignSizesFoundation.baseSeparated,
    );
  }
}
