import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';

class AppButtons {
  static Widget customElevatedButton({
    required BuildContext context,
    required String label,
    required VoidCallback onPressed,
    required Color? backgroundColor,
    Color? textColor,
    IconData? icon, // Direct icon support
    String? imagePath, // Agar asset image lagani ho
    double? width,
    double? height,
    double? borderRadius,
    bool hasBorder = true,
    double iconSize = 26,
    double iconCircleSize = 50,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height ?? 60,
        width: width ?? screenWidth * 0.85, // Responsive without sizer
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius ?? 50),
          border: hasBorder
              ? Border.all(color: AppColors.darkGray)
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (icon != null || (imagePath != null && imagePath.isNotEmpty))
              CircleAvatar(
                radius: iconCircleSize / 2,
                backgroundColor: Colors.white,
                child: icon != null
                    ? Icon(
                        icon,
                        size: iconSize,
                        color: textColor ?? Colors.black,
                      )
                    : Image.asset(
                        imagePath!,
                        height: iconSize,
                        width: iconSize,
                      ),
              ),
            SizedBox(
              width:
                  (icon != null || (imagePath != null && imagePath.isNotEmpty))
                  ? 20
                  : 0,
            ),
            Expanded(
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor ?? AppColors.lightBackground,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
