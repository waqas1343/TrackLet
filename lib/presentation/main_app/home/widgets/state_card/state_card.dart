import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';

final ValueNotifier<int> selectedCardIndex = ValueNotifier<int>(0);

class StatCard extends StatelessWidget {
  final int index;
  final String title;
  final String subtitle;
  final String value;
  final Color? backgroundColor;
  final Color textColor;
  final Color? borderColor;

  const StatCard({
    super.key,
    required this.index,
    required this.title,
    required this.subtitle,
    required this.value,
    this.backgroundColor,
    required this.textColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder<int>(
        valueListenable: selectedCardIndex,
        builder: (context, selectedIndex, child) {
          Color cardColor = selectedIndex == index
              ? AppColors.darkBlue
              : (backgroundColor ?? AppColors.white);

          Color cardTextColor =
              selectedIndex == index ? AppColors.white : textColor;

          Color cardBorderColor = selectedIndex == index
              ? AppColors.darkBlue
              : (borderColor ?? AppColors.darkGray);

          return GestureDetector(
            onTap: () => selectedCardIndex.value = index,
            child: Container(
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: cardBorderColor,
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: cardTextColor),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          subtitle,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: cardTextColor),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    value,
                    style: TextStyle(
                      color: cardTextColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
