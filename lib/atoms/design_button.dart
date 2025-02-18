import 'package:desing_system/design_system.dart';
import 'package:flutter/material.dart';

enum ButtonType {
  /// Represents a primary button with a filled background.
  primary,

  /// Represents a secondary button with a border.
  secondary,

  /// Represents a large primary button with a filled background.
  primaryLarge,

  /// Represents a large secondary button with a filled background.
  secondaryLarge,

  /// Represents a large primary button with a filled background.
  primaryMedium,

  /// Represents a large secondary button with a filled background.
  secondaryMedium,

  /// Represents a large primary button with a filled background.
  primarySmall,

  /// Represents a large secondary button with a filled background.
  secondarySmall,
}

class DesignButton extends StatelessWidget {
  final ButtonType type;
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
  });

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.bodySmall!;
    final primaryButton = MaterialButton(
      onPressed: onPressed,
      color: DesignColorsFoundation.colorButtonPrimary,
      disabledColor: DesignColorsFoundation.colorButtonDisabled,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.5),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        text,
        style: 
        textStyle.copyWith(
          color: DesignColorsFoundation.colorTextButtonPrimary,
        )
      ),
    );

    final secondaryButton = MaterialButton(
      onPressed: onPressed,
      color: DesignColorsFoundation.colorButtonSecondary,
      disabledColor: DesignColorsFoundation.colorButtonDisabled,
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

    final primaryButtonLarge = MaterialButton(
      height: 89,
      minWidth: 300,
      onPressed: onPressed,
      color: DesignColorsFoundation.colorButtonPrimary,
      disabledColor: DesignColorsFoundation.colorButtonDisabled,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.5),
        borderRadius: BorderRadius.circular(44.5),
      ),
      child: Text(
        text,
        style: 
        textStyle.copyWith(
          fontSize: 45,
          color: DesignColorsFoundation.colorTextButtonPrimary,
        )
      ),
    );

    final secondaryButtonLarge = MaterialButton(
      height: 89,
      minWidth: 300,
      onPressed: onPressed,
      color: DesignColorsFoundation.colorButtonSecondary,
      disabledColor: DesignColorsFoundation.colorButtonDisabled,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.5),
        borderRadius: BorderRadius.circular(44.5),
      ),
      child: Text(
        text,
        style: 
        textStyle.copyWith(
          fontSize: 45,
          color: DesignColorsFoundation.colorTextButtonSecondary,
        )
      ),
    );

    final primaryButtonMedium = MaterialButton(
      height: 66,
      minWidth: 200,
      onPressed: onPressed,
      color: DesignColorsFoundation.colorButtonPrimary,
      disabledColor: DesignColorsFoundation.colorButtonDisabled,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.5),
        borderRadius: BorderRadius.circular(33),
      ),
      child: Text(
        text,
        style: 
        textStyle.copyWith(
          fontSize: 27,
          color: DesignColorsFoundation.colorTextButtonPrimary,
        )
      ),
    );

    final secondaryButtonMedium = MaterialButton(
      height: 66,
      minWidth: 200,
      onPressed: onPressed,
      color: DesignColorsFoundation.colorButtonSecondary,
      disabledColor: DesignColorsFoundation.colorButtonDisabled,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.5),
        borderRadius: BorderRadius.circular(33),
      ),
      child: Text(
        text,
        style: 
        textStyle.copyWith(
          fontSize: 27,
          color: DesignColorsFoundation.colorTextButtonSecondary,
        )
      ),
    );

    final primaryButtonSmall = MaterialButton(
      height: 55,
      minWidth: 125,
      onPressed: onPressed,
      color: DesignColorsFoundation.colorButtonPrimary,
      disabledColor: DesignColorsFoundation.colorButtonDisabled,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.5),
        borderRadius: BorderRadius.circular(27.5),
      ),
      child: Text(
        text,
        style: 
        textStyle.copyWith(
          fontSize: 18,
          color: DesignColorsFoundation.colorTextButtonPrimary,
        )
      ),
    );

    final secondaryButtonSmall = MaterialButton(
      height: 55,
      minWidth: 125,
      onPressed: onPressed,
      color: DesignColorsFoundation.colorButtonSecondary,
      disabledColor: DesignColorsFoundation.colorButtonDisabled,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.5),
        borderRadius: BorderRadius.circular(27.5),
      ),
      child: Text(
        text,
        style: 
        textStyle.copyWith(
          fontSize: 18,
          color: DesignColorsFoundation.colorTextButtonSecondary,
        )
      ),
    );
    

    switch(type){
      case ButtonType.primary:
        return primaryButton;
      case ButtonType.secondary:
        return secondaryButton;
      case ButtonType.primaryLarge:
        return primaryButtonLarge;
      case ButtonType.secondaryLarge:
        return secondaryButtonLarge;
      case ButtonType.primaryMedium:
        return primaryButtonMedium;
      case ButtonType.secondaryMedium:
        return secondaryButtonMedium;
      case ButtonType.primarySmall:
        return primaryButtonSmall;
      case ButtonType.secondarySmall:
        return secondaryButtonSmall;
    }
  }
}
