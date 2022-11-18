import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({Key? key, this.textAlign = TextAlign.left, this.fontWeight = FontWeight.normal, this.height = 0, required this.text, this.color = Colors.black, this.size = 14,}) : super(key: key);
  final String text;
  final Color color;
  final double size;
    final double height;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight, height: height), textAlign: textAlign,);
  }
}