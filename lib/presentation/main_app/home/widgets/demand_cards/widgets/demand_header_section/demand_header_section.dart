import 'package:flutter/material.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';
import 'package:tracklet/data/model/demand_model/demand_model.dart';

class DemandHeader extends StatelessWidget {
  final DemandCardModel model;
  const DemandHeader({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: model.shopName,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 2),
              CustomText(
                text: model.description,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        CircleAvatar(radius: 20, backgroundImage: NetworkImage(model.imageUrl)),
      ],
    );
  }
}
