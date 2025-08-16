import 'package:flutter/material.dart';
import 'package:tracklet/presentation/main_app/scan/widgets/order_type_tabs/order_type_tabs.dart';
import 'package:tracklet/presentation/main_app/scan/widgets/scan_header/scan_header.dart';
import 'package:tracklet/presentation/main_app/scan/widgets/scan_qr_box/scan_qr_box.dart';
import 'package:tracklet/core/widgets/custom_app_bar/custom_app_bar.dart';


class Scan extends StatelessWidget {
  final bool showFilled;
  const Scan({super.key, this.showFilled = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(name: "Bilal Ahmed", initials: "BA"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            const ScanHeader(), 
            const SizedBox(height: 16),
            OrderTypeTabs(),
            const Expanded(child: ScanQrBox()),
          ],
        ),
      ),
    );
  }
}
