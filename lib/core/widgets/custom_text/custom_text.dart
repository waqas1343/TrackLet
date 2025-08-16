import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final TextStyle? style;

  const CustomText( {
    super.key,
    required this.text,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.normal,
    this.color = AppColors.black,
    this.textAlign = TextAlign.left,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style ??
          TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
            fontFamily: 'Oddval',
          ),
    );
  }
}
// custom text banaya ha jo pori app ma mujhy kafi support kry ga like mujhy bar bar font family deni nahi pary gi and others !