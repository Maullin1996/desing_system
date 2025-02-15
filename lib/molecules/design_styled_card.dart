import 'package:desing_system/design_system.dart';
import 'package:flutter/material.dart';

/// A styled card widget with an illustration, title, and a secondary button.
class DesignStyledCard extends StatelessWidget {
  /// Creates a styled card widget with an illustration, title, and a secondary button.
  final String title;
  final String buttonText;
  final Function()? onPressed;
  final DesignIllustrationType illustrationType;

  const DesignStyledCard({
    super.key, 
    /// The title displayed on the card.
    required this.title, 
    /// The text displayed on the button.
    required this.buttonText, 
    /// The callback function triggered when the button is pressed.
    this.onPressed, 
    /// The type of illustration to display.
    required this.illustrationType});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 154,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/bg/bg-categories.png'),
          ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DesignIllustration(type: illustrationType, widthImage: 85),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8),
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            ),
            DesignButton(
              type: ButtonType.secondary, 
              text: buttonText, 
              onPressed: onPressed
          )
        ],
      ),
    );
  }
}
