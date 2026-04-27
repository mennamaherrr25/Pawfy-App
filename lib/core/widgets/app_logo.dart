import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({this.width = 24, this.height = 24, super.key});
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/paw.png", width:width, height:height);
  }
}
