import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';
import 'package:tracklet/logic/controllers/demand_controller/demand_controller.dart';
import 'package:tracklet/presentation/main_app/request/widgets/request_card/request_card.dart';
import 'package:tracklet/core/widgets/custom_app_bar/custom_app_bar.dart';

class AllRequest extends StatelessWidget {
  const AllRequest({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<DemandProvider>();

    return Scaffold(
      appBar: const CustomAppBar(name: 'Bilal Ahmed', initials: "BA"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: EdgeInsets.all(16.0),
            child: CustomText(text: 'All Request',style: Theme.of(context).textTheme.titleLarge,),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: provider.demandList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: RequestCard(model: provider.demandList[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
