import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/presentation/main_app/stock/widgets/table_row_item/table_row_item.dart';

class FilledTable extends StatelessWidget {
  const FilledTable({super.key});

  Widget _buildTableHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.darkBlue,
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Row(
        children: [
          Expanded(flex: 1, child: Text('S.no', style: TextStyle(fontWeight: FontWeight.w500,color: AppColors.darkBlue,fontSize: 16))),
          Expanded(flex: 2, child: Text('Cyl.no', style: TextStyle(fontWeight: FontWeight.w500,color: AppColors.darkBlue,fontSize: 16))),
          Expanded(flex: 1, child: Text('Weight', style: TextStyle(fontWeight: FontWeight.w500,color: AppColors.darkBlue,fontSize: 16))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final rows = [
      TableRowItem(sno: '01', cylNo: '4446', weight: '50KG'),
      TableRowItem(sno: '02', cylNo: '4447', weight: '75KG'),
      TableRowItem(sno: '03', cylNo: '4448', weight: '45KG'),
      TableRowItem(sno: '04', cylNo: '4449', weight: '60KG'),
      TableRowItem(sno: '05', cylNo: '4450', weight: '55KG'),
      TableRowItem(sno: '06', cylNo: '4451', weight: '65KG'),
      TableRowItem(sno: '07', cylNo: '4452', weight: '70KG'),
      TableRowItem(sno: '08', cylNo: '4453', weight: '80KG'),
    ];

    final ScrollController scrollController = ScrollController();

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.brown),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Filled Cylinder',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: AppColors.darkBlue),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 300,
            child: ScrollbarTheme(
              data: ScrollbarThemeData(
                thumbColor: WidgetStateProperty.all(const Color(0xFF1A237E)),
                thickness: WidgetStateProperty.all(6),
                radius: const Radius.circular(10),
              ),
              child: Scrollbar(
                controller: scrollController,
                thumbVisibility: true,
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: rows.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return _buildTableHeader();
                    } else {
                      return rows[index - 1];
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
