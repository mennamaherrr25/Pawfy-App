import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
    required this.style,
    this.maxlines,
    this.textAlign,
  });
  final String text;
  final TextStyle style;
  final int? maxlines;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: style, maxLines: maxlines, textAlign: textAlign);
  }
}
