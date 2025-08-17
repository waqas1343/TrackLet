import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';
import 'package:tracklet/logic/controllers/demand_controller/demand_controller.dart';
import 'package:tracklet/presentation/main_app/stock/widgets/cylinder_box/cylinder_box.dart';
import 'package:tracklet/presentation/main_app/stock/widgets/empty_filled_buttons/empty_filled_buttons.dart';
import 'package:tracklet/presentation/main_app/stock/widgets/filled_table/filled_table.dart';
import 'package:tracklet/core/widgets/custom_app_bar/custom_app_bar.dart';

class Stock extends StatelessWidget {
  const Stock({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<DemandProvider>();

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
              children: [
               CylinderBox(
                  index: 0,
                  title: "Cylinder",
                  subtitle: "in stocks",
                  value: "${provider.stockCylinders}",
                  textColor: Colors.black,
                ),
                const SizedBox(width: 12),
                CylinderBox(
                  index: 1000,
                  title: "Empty",
                  subtitle: "Cylinder",
                  value: "${provider.emptyCylinders}",
                  textColor: Colors.black,
                ),
                
              ],
            ),
            const SizedBox(height: 24),
             EmptyFilledButtons(),
            const SizedBox(height: 24),
            const FilledTable(),
          ],
        ),
      ),
    );
  }
}
