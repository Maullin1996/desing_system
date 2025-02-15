import 'package:desing_system/design_system.dart';
import 'package:flutter/material.dart';

enum DesignActionCardType {
  /// Represents a primary action card with a primary color background.
  primary,

  /// Represents a secondary action card with a secondary color background.
  secondary,

  /// Represents a tertiary action card with a scale01 color background.
  tertiary,
}

/// A customizable action card with an illustration, title, description, and a text button.

class DesignActionCard extends StatelessWidget {
  final String title;
  final String buttonText;
  final String description;
  final DesignIllustrationType illustrationType;
  final DesignActionCardType cardType;
  final Function()? onPressed;

  const DesignActionCard(
      {super.key,
      required this.title,
      required this.buttonText,
      required this.description,
      required this.illustrationType,
      required this.cardType,
      this.onPressed});

  Color _getCardColor() {
    switch (cardType) {
      case DesignActionCardType.primary:
        return DesignColors.primaryColor;
      case DesignActionCardType.secondary:
        return DesignColors.secondaryColor;
      case DesignActionCardType.tertiary:
        return DesignColors.scale01;
    }
  }

  _getTitleTextStyleColor() {
    switch (cardType) {
      case DesignActionCardType.primary:
        return DesignColors.strongPrimary;
      case DesignActionCardType.secondary:
        return DesignColors.secondaryColor;
      case DesignActionCardType.tertiary:
        return DesignColors.primaryColor;
    }
  }

  _getDescTextStyleColor() {
    switch (cardType) {
      case DesignActionCardType.primary:
        return DesignColors.strongPrimary;
      case DesignActionCardType.secondary:
        return DesignColors.light;
      case DesignActionCardType.tertiary:
        return DesignColors.strongPrimary;
    }
  }

  TextStyle _getDescTextStyle() {
    return TextStyle(
      fontFamily: DesignTypography.familySourceSans3,
      color: _getDescTextStyleColor(),
      fontSize: DesignFoundationTypo.fontSizeH6,
      fontWeight: FontWeight.bold
    );
  }

  TextStyle _getTitleTextStyle() {
    return TextStyle(
      fontFamily: DesignTypography.familySourceSans3,
      color: _getTitleTextStyleColor(),
      fontSize: DesignFoundationTypo.fontSizeH5,
      fontWeight: FontWeight.bold
    );
  }

  TextButtonType _getButtonType(){
    switch(cardType){
      case DesignActionCardType.primary:
        return TextButtonType.primary;
      case DesignActionCardType.secondary:
        return TextButtonType.secondary;
      case DesignActionCardType.tertiary:
        return TextButtonType.primary;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: _getCardColor(),
        borderRadius: BorderRadius.circular(14.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DesignIllustration(
              type: illustrationType, 
              widthImage: 125
              ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: _getTitleTextStyle(),
                    ),
                    Text(
                      description,
                      style: _getDescTextStyle(),
                    ),
                    Expanded(
                      child: DesignTextButton(
                        text: buttonText, 
                        type: _getButtonType(), 
                        onPressed: onPressed,)
                      )
                  ],
                ),
                )
              )
          ],
        ),
        
      ),
    );
  }
}
