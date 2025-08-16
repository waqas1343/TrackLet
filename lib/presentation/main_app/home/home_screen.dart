import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracklet/logic/controllers/demand_controller/demand_controller.dart';
import 'package:tracklet/presentation/main_app/home/widgets/section_header/section_header.dart';
import 'package:tracklet/presentation/main_app/home/widgets/state_card/state_card.dart';
import 'package:tracklet/core/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:tracklet/presentation/main_app/home/widgets/demand_cards/demand_card.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<DemandProvider>();

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: const CustomAppBar(name: 'Bilal Ahmed', initials: "BA"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeader(title: 'Inventory', onTap: () {}),
            const SizedBox(height: 12),
            Row(
              children: [
                StatCard(
                  index: 0,
                  title: "Cylinder",
                  subtitle: "in stocks",
                  value: "${provider.stockCylinders}",
                  textColor: Colors.black,
                ),
                const SizedBox(width: 12),
                StatCard(
                  index: 1000,
                  title: "Empty",
                  subtitle: "Cylinder",
                  value: "${provider.emptyCylinders}",
                  textColor: Colors.black,
                ),
              ],
            ),
            const SizedBox(height: 20),
            SectionHeader(title: 'Requested', onTap: () {}),
            const SizedBox(height: 12),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: provider.demandList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: DemandCard(model: provider.demandList[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
