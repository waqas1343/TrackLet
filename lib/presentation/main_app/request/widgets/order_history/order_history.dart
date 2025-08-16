import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';

class OrderHistoryTable extends StatelessWidget {
  final List<List<String>> orderHistory;

  const OrderHistoryTable({super.key, required this.orderHistory});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1.2),
        3: FlexColumnWidth(1.2),
        4: FlexColumnWidth(1.5),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        _buildHeaderRow(context),
        ...orderHistory.map((row) => _buildDataRow(row, context)),
      ],
    );
  }

  TableRow _buildHeaderRow(BuildContext context) {
    return TableRow(
      children: [
        _headerCell("S.no", context),
        _headerCell("Cyl.no", context),
        _headerCell("Date", context),
        _headerCell("Driver", context),
        _headerCell("Dispatch", context),
      ],
    );
  }

  TableRow _buildDataRow(List<String> row, BuildContext context) {
    return TableRow(
      children: [
        _dataCell(row[0], context),
        _dataCell(row[1], context),
        _dataCell(row[2], context),
        _dataCell(row[3], context),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(12),
            ),
            child: CustomText(
              text: row[4],
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }

  Widget _headerCell(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: CustomText(
        text: text,
        style: Theme.of(context).textTheme.titleMedium
      ),
    );
  }

  Widget _dataCell(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: CustomText(
        text: text,
        style: Theme.of(context).textTheme.bodySmall
      ),
    );
  }
}
