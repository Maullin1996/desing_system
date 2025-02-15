
import 'package:flutter/material.dart';

import '../../design_system.dart';

final lightDesignTheme = ThemeData(
    primaryColor: DesignColorsFoundation.primaryColor,
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
      fontFamily: DesignFoundationTypo.familyHeadings,
      fontSize: DesignFoundationTypo.fontSizeH4,
    ),
    bodyMedium: TextStyle(
      fontFamily: DesignFoundationTypo.familyHeadings,
      fontSize: DesignFoundationTypo.fontSizeH5,
    ),
    bodySmall: TextStyle(
      fontFamily: DesignFoundationTypo.familyHeadings,
      fontSize: DesignFoundationTypo.fontSizeH6,
    ),
    ));

final darkDesignTheme = ThemeData(
  primaryColor: DesignColorsFoundation.primaryColor,
  textTheme: const TextTheme(
        bodyLarge: TextStyle(
      fontFamily: 'SourceSans3',
      fontSize: DesignFoundationTypo.fontSizeH4,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'SourceSans3',
      fontSize: DesignFoundationTypo.fontSizeH5,
    ),
    bodySmall: TextStyle(
      fontFamily: 'SourceSans3',
      fontSize: DesignFoundationTypo.fontSizeH6,
    )),
);