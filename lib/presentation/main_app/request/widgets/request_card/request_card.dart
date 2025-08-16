import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/data/model/demand_model/demand_model.dart';
import 'package:tracklet/presentation/main_app/home/widgets/demand_cards/widgets/demand_close_button/demand_close_button.dart';
import 'package:tracklet/presentation/main_app/home/widgets/demand_cards/widgets/demand_contect_row/demand_contect_row.dart';
import 'package:tracklet/presentation/main_app/home/widgets/demand_cards/widgets/demand_header_section/demand_header_section.dart';
import 'package:tracklet/presentation/main_app/home/widgets/demand_cards/widgets/demand_item_row/demand_item_row.dart';
import 'package:tracklet/presentation/main_app/request/widgets/order_history/order_history.dart';

class RequestCard extends StatelessWidget {
  final DemandCardModel model;
  final VoidCallback? onClose;
  final VoidCallback? onCall;
  final VoidCallback? onCopy;

  const RequestCard({
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
            border: Border.all(color:AppColors.darkGray, width: 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DemandHeader(model: model),
              const SizedBox(height: 12),
              DemandContactRow(model: model),
              const SizedBox(height: 12),
              const Text(
                "Requested Items",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.darkBlue,
                ),
              ),
              const SizedBox(height: 8),
              const DemandItemsRow(items: ["50 KG (3)", "15 KG (5)"]),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Order History:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkBlue,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: AppColors.darkBlue,
                    size: 24,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              OrderHistoryTable(
                orderHistory: [
                  ["01", "201", "04/02", "Majid", "50 KG (3)"],
                  ["02", "202", "05/02", "Ali", "30 KG (2)"],
                  ["03", "203", "06/02", "Majid", "50 KG (1)"],
                  ["04", "204", "07/02", "Majid", "44 KG (4)"],
                ],
              ),
            ],
          ),
        ),
        DemandCloseButton(onClose: onClose),
      ],
    );
  }
}
