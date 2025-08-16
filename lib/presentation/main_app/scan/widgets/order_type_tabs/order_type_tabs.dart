import 'package:flutter/material.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';

class OrderTypeTabs extends StatelessWidget {
  const OrderTypeTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ValueNotifier<int>(0); 

    return ValueListenableBuilder<int>(
      valueListenable: selectedIndex,
      builder: (context, value, _) {
        return Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () => selectedIndex.value = 0,
                style: TextButton.styleFrom(
                  backgroundColor: value == 0 ? AppColors.mediumBlue : AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(
                      color: value == 0 ? AppColors.darkBlue : Colors.grey.shade400,
                    ),
                  ),
                ),
                child: CustomText(
                  text: 'Filled',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: value == 0 ? AppColors.white : Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: TextButton(
                onPressed: () => selectedIndex.value = 1,
                style: TextButton.styleFrom(
                  backgroundColor: value == 1 ? AppColors.darkBlue : AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(
                      color: value == 1 ? AppColors.darkBlue : Colors.grey.shade400,
                    ),
                  ),
                ),
                child: CustomText(
                  text: 'Empty',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: value == 1 ? AppColors.white : Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
