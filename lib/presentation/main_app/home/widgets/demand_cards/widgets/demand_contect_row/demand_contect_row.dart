import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';
import 'package:tracklet/data/model/demand_model/demand_model.dart';
import 'package:url_launcher/url_launcher.dart'; 

class DemandContactRow extends StatelessWidget {
  final DemandCardModel model;

  const DemandContactRow({
    super.key,
    required this.model,
  });

  Future<void> _callNumber(String number) async {
    final Uri callUri = Uri(scheme: 'tel', path: number);
    if (await canLaunchUrl(callUri)) {
      await launchUrl(callUri);
    } else {
      throw 'Could not launch $number';
    }
  }
  void _copyNumber(BuildContext context, String number) {
    Clipboard.setData(ClipboardData(text: number));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Number copied: $number')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: model.personName,style: Theme.of(context).textTheme.labelLarge,),
              const SizedBox(height: 4),
              CustomText(text: model.phoneNumber,style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
        ),
        GestureDetector(
          onTap: () => _callNumber(model.phoneNumber),
          child: const Icon(Icons.call, size: 16, color: AppColors.black),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () => _copyNumber(context, model.phoneNumber),
          child:  Icon(Icons.copy, size: 16, color: AppColors.black),
        ),
      ],
    );
  }
}
