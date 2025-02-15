import 'package:flutter/material.dart';

/// A widget that displays an image from a network URL.
class DesignImage extends StatelessWidget {
  /// The URL of the network image.
  final String url;
  /// The desired width of the image.
  final double widthImage;
  /// The desired height of the image.
  final double heightImage;

  /// Creates a widget that displays an image from a network URL.
  const DesignImage({
    super.key,
    required this.url,
    required this.widthImage,
    required this.heightImage,
  });

  @override
  Widget build(BuildContext context) {
    Widget designImage = Image.network(
      url,
      width: widthImage,
      height: heightImage,
    );
    return designImage;
  }
}