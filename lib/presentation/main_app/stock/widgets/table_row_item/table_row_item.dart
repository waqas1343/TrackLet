import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';

class TableRowItem extends StatelessWidget {
  final String sno;
  final String cylNo;
  final String weight;

  const TableRowItem({
    super.key,
    required this.sno,
    required this.cylNo,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFEEEEEE))),
      ),
      child: Row(
        children: [
          Expanded(flex: 1, child: Text(sno, style: const TextStyle(fontSize: 12,color: AppColors.darkBlue,fontWeight: FontWeight.w500))),
          Expanded(flex: 2, child: Text(cylNo, style: const TextStyle(fontSize: 12,color: AppColors.darkBlue,fontWeight: FontWeight.w500))),
          Expanded(flex: 1, child: Text(weight, style: const TextStyle(fontSize: 12,color: AppColors.darkBlue,fontWeight: FontWeight.w500))),
        ],
      ),
    );
  }
}
