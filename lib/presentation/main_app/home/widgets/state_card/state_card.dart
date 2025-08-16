import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/logic/controllers/select_card_provider/select_card_provider.dart';

class StatCard extends StatelessWidget {
  final int index;
  final String title;
  final String subtitle;
  final String value;
  final Color? backgroundColor;
  final Color textColor;
  final Color? borderColor; // optional border color

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
    return Consumer<SelectedCardProvider>(
      builder: (context, selectedCard, child) {
        Color cardColor = selectedCard.selectedIndex == index
            ? AppColors.darkBlue
            : (backgroundColor ?? AppColors.white);

        Color cardTextColor = selectedCard.selectedIndex == index
            ? AppColors.white
            : textColor;

        Color cardBorderColor = selectedCard.selectedIndex == index
            ? AppColors.darkBlue 
            : (borderColor ?? AppColors.darkGray); 

        return Expanded(
          child: GestureDetector(
            onTap: () => selectedCard.selectCard(index),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: cardTextColor),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Flexible(
                    child: Text(
                      subtitle,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: cardTextColor),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Flexible(
                    child: Text(
                      value,
                      style: TextStyle(
                        color: cardTextColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
