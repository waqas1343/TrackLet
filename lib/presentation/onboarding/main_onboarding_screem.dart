import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/core/widgets/custom_button/custom_button.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';
import 'package:tracklet/presentation/main_app/bottom_nav_bar/bottom_nav_bar.dart';

class MainOnboardingScreem extends StatelessWidget {
  const MainOnboardingScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            Column(
              children: [
                Image.asset("assets/images/onboarding.png"),
                const SizedBox(height: 40),
                CustomText(
                  text: 'Track Every Cylinder',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                CustomText(
                  text:
                      'Scan QR codes to track every cylinder easily\nand securely.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const Spacer(flex: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AppButtons.customElevatedButton(
                context: context,
                label: 'Get Started',
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavBar(),
                    ),
                    (route) => false,
                  );
                },
                backgroundColor: AppColors.darkBlue,
              ),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
