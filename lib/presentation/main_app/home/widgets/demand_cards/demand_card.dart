import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';
import 'package:tracklet/data/model/demand_model/demand_model.dart';
import 'package:tracklet/presentation/main_app/home/widgets/demand_cards/widgets/demand_action_button/demand_action_button.dart';
import 'package:tracklet/presentation/main_app/home/widgets/demand_cards/widgets/demand_close_button/demand_close_button.dart';
import 'package:tracklet/presentation/main_app/home/widgets/demand_cards/widgets/demand_contect_row/demand_contect_row.dart';
import 'package:tracklet/presentation/main_app/home/widgets/demand_cards/widgets/demand_header_section/demand_header_section.dart';
import 'package:tracklet/presentation/main_app/home/widgets/demand_cards/widgets/demand_item_row/demand_item_row.dart';

class DemandCard extends StatelessWidget {
  final DemandCardModel model;
  final VoidCallback? onClose;
  final VoidCallback? onCall;
  final VoidCallback? onCopy;

  const DemandCard({
    super.key,
    required this.model,
    this.onClose,
    this.onCall,
    this.onCopy,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: AppColors.darkGray,
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DemandHeader(model: model),
              const SizedBox(height: 12),
              DemandContactRow(model: model,),
              const SizedBox(height: 12),
              CustomText(text: 'Requested Items',style: Theme.of(context).textTheme.labelLarge,),
              const SizedBox(height: 8),
              const DemandItemsRow(items: ["50 KG (3)", "15 KG (5)"]),
              const SizedBox(height: 16),
              DemandActionButton(onPressed: () {}),
            ],
          ),
        ),
        DemandCloseButton(onClose: onClose),
      ],
    );
  }
}
