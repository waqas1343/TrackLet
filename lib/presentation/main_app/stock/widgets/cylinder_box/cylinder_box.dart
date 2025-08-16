import 'package:flutter/material.dart';

class CylinderBox extends StatelessWidget {
  final String title;
  final String count;
  final Color bgColor;
  final Color titleColor;
  final Color countColor;

  const CylinderBox({
    super.key,
    required this.title,
    required this.count,
    required this.bgColor,
    required this.titleColor,
    required this.countColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFE0E0E0)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.4,
                  color: titleColor, 
              ),
            ),
            Text(
              count,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: countColor, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
