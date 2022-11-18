
import 'package:flutter/material.dart';

import '../util/image_utils.dart';

class LoadAssetImage extends StatelessWidget {

  const LoadAssetImage(this.image, {
    Key? key,
    this.width,
    this.height,
    this.fit,
    this.format = 'png',
    this.color
  }): super(key: key);

  final String image;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final String format;
  final Color? color;

  @override
  Widget build(BuildContext context) {

    return Image.asset(
      ImageUtils.getImgPath(image, format: format),
      height: height,
      width: width,
      fit: fit,
      color: color,
      excludeFromSemantics: true,
    );
  }
}