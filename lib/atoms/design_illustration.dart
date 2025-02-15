import 'package:desing_system/design_system.dart';
import 'package:flutter/material.dart';

enum DesignIllustrationType {
  /// Illustration representing space.
  space,

  /// Illustration representing love.
  love,

  /// Illustration representing technology exploration (text in Spanish).
  technologyExploration,

  /// Illustration representing an atom.
  atom,

  /// Illustration representing molecules.
  molecules,

  /// Illustration representing organisms.
  organisms,

  /// Illustration representing programming.
  programming,

  /// Illustration representing design.
  design,

  /// Illustration representing design with a white theme.
  designWhite,

  /// Illustration representing consulting services.
  consulting,

  /// Illustration representing templates.
  templates,

  /// Illustration representing action.
  action,
}

/// A map that associates each [DesignIllustrationType] with its corresponding asset path.

const Map<DesignIllustrationType, String> _illustrationPaths = {
  DesignIllustrationType.space: 'assets/images/illustrations/space.png',
  DesignIllustrationType.love: 'assets/images/illustrations/love.png',
  DesignIllustrationType.technologyExploration:
      'assets/images/illustrations/technology-exploration.png',
  DesignIllustrationType.atom: 'assets/images/illustrations/atom.png',
  DesignIllustrationType.molecules: 'assets/images/illustrations/molecules.png',
  DesignIllustrationType.organisms: 'assets/images/illustrations/organisms.png',
  DesignIllustrationType.programming:
      'assets/images/illustrations/programming.png',
  DesignIllustrationType.design: 'assets/images/illustrations/design.png',
  DesignIllustrationType.designWhite:
      'assets/images/illustrations/design-white.png',
  DesignIllustrationType.consulting:
      'assets/images/illustrations/consulting.png',
  DesignIllustrationType.templates: 'assets/images/illustrations/templates.png',
  DesignIllustrationType.action: 'assets/images/illustrations/action.png',
};

/// A widget that displays an illustration from the asset bundle.

class DesignIllustration extends StatelessWidget {
  final DesignIllustrationType type;
  final double widthImage;

  const DesignIllustration({
    super.key, 
    required this.type, 
    required this.widthImage
    });

  @override
  Widget build(BuildContext context) {
    return DesignAssetImage(path: _illustrationPaths[type]!, widthImage: widthImage);
  }
}
