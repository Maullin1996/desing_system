import 'package:desing_system/design_system.dart';
import 'package:flutter/material.dart';

enum ButtonType {
  /// Represents a primary button with a filled background.
  primary,

  /// Represents a secondary button with a border.
  secondary,
}

class DesignButton extends StatelessWidget {
  final ButtonType type;
  final TextStyle? textStyle;
  final String text;
  final Function()? onPressed;
  const DesignButton({
    super.key,

    /// The type of button (primary or secondary).
    required this.type,

    /// The text displayed on the button.
    required this.text,

    /// The callback function triggered when the button is pressed.
    this.onPressed, 
    
    /// The text style of the button.
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.bodySmall!;
    final primaryButton = MaterialButton(
      onPressed: onPressed,
      color: DesignColorsFoundation.colorButtonPrimary,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.5),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        text,
        style: textStyle.copyWith(
          color: DesignColorsFoundation.colorTextButtonPrimary,
        )
      ),
    );

    final secondaryButton = MaterialButton(
      onPressed: onPressed,
      color: DesignColorsFoundation.colorButtonSecondary,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.5),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        text,
        style: textStyle.copyWith(
          color: DesignColorsFoundation.colorTextButtonSecondary,
        ),
      ),
    );

    return type == ButtonType.primary ? primaryButton : secondaryButton;
  }
}
