import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/core/widgets/custom_button/custom_button.dart';

class ScanQrBox extends StatelessWidget {
  const ScanQrBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Image.asset('assets/images/scanner.png')),
          SizedBox(height: 20,),

          AppButtons.customElevatedButton(context: context, label: 'Scan Now', onPressed: () {
            
          }, backgroundColor: AppColors.darkBlue,icon: Icons.scanner_outlined,hasBorder: true,height: 51,)
      ],
    );
  }

}
