import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';

class ScanHeader extends StatelessWidget {
  const ScanHeader({super.key});

  @override
  Widget build(BuildContext context) {  
    final selectedIndex = ValueNotifier<int>(0);
    return Column(
      children: [
        ValueListenableBuilder<int>(
          valueListenable: selectedIndex,
          builder: (context, value, _) {
            return _orderBox(
              context: context,
              title: "New Orders",
              count: "(24)",
              isSelected: value == 0,
              onTap: () => selectedIndex.value = 0,
            );
          },
        ),
        const SizedBox(height: 12),
        ValueListenableBuilder<int>(
          valueListenable: selectedIndex,
          builder: (context, value, _) {
            return _orderBox(
              context: context,
              title: "Current Orders",
              count: "(200)",
              isSelected: value == 1,
              onTap: () => selectedIndex.value = 1,
            );
          },
        ),
      ],
    );
  }

  Widget _orderBox({
    required BuildContext context,
    required String title,
    required String count,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    final bgColor = isSelected ? AppColors.darkBlue : AppColors.white;
    final titleColor = isSelected ? AppColors.white : AppColors.black;
    final countColor = isSelected ? AppColors.white : AppColors.black;
    final viewDetailsColor = isSelected ? AppColors.white : AppColors.black;
    final borderColor = isSelected ? AppColors.darkBlue : Colors.grey.shade400;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomText(
                  text: title,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: titleColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: CustomText(
                    text: count,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: countColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            ),
            CustomText(
              text: 'View details',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: viewDetailsColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
