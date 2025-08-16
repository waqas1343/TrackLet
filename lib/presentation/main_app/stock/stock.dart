import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';
import 'package:tracklet/presentation/main_app/stock/widgets/cylinder_box/cylinder_box.dart';
import 'package:tracklet/presentation/main_app/stock/widgets/empty_filled_buttons/empty_filled_buttons.dart';
import 'package:tracklet/presentation/main_app/stock/widgets/filled_table/filled_table.dart';
import 'package:tracklet/core/widgets/custom_app_bar/custom_app_bar.dart';

class Stock extends StatelessWidget {
  const Stock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(name: "Bilal Ahmed", initials: "BA"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: 'All Stock',style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(height: 20),
            Row(
              children: const [
                CylinderBox(title: 'Cylinder\nin stocks', count: '48', bgColor: AppColors.darkBlue, titleColor: AppColors.darkBlue, countColor: AppColors.darkBlue,),
                SizedBox(width: 12),
                CylinderBox(title: 'Empty\nCylinder', count: '30', bgColor:AppColors.darkBlue, titleColor: AppColors.darkBlue, countColor: AppColors.darkBlue,),
              ],
            ),
            const SizedBox(height: 24),
            const EmptyFilledButtons(),
            const SizedBox(height: 24),
            const FilledTable(),
          ],
        ),
      ),
    );
  }
}
