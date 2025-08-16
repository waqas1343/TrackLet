import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';

class DemandItemsRow extends StatelessWidget {
  final List<String> items;
  const DemandItemsRow({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .map((item) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: _buildChip(item, context), 
              ))
          .toList(),
    );
  }

  Widget _buildChip(String text, BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            text: text,
            style: Theme.of(context).textTheme.bodyMedium
          ),
          const SizedBox(width: 4),
          const Icon(
            Icons.local_gas_station,
            size: 14,
            color: AppColors.white,
          ),
        ],
      ),
    );
  }
}
