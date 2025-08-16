import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/core/routes/app_routes/app_routes.dart';
import 'package:tracklet/core/widgets/custom_button/custom_button.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';
import 'package:tracklet/logic/controllers/language_provider/language_provider.dart';

class SelectLanguage extends StatelessWidget {
  const SelectLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    final langProvider = context.watch<LanguageProvider>();

    return Scaffold(
       backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 100),
            Column(
              children: [
                CustomText(
                  text: 'Choose Your Language',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: 8),
                CustomText(
                  text:
                      'Select your preferred language to continue \nusing the app.',
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center, 
                ),

                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildLanguageBox(context, "ENG", langProvider),
                    const SizedBox(width: 20),
                    _buildLanguageBox(context, "اردو", langProvider),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            AppButtons.customElevatedButton(
              context: context,
              label: 'Continue',
              onPressed: () {
                debugPrint(
                  "Selected Language: ${langProvider.selectedLanguage}",
                );
                Navigator.pushReplacementNamed(context, AppRoutes.login);
              },
              backgroundColor: AppColors.darkBlue,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageBox(
    BuildContext context,
    String label,
    LanguageProvider provider,
  ) {
    final bool isSelected = provider.selectedLanguage == label;

    return GestureDetector(
  onTap: () => provider.selectLanguage(label),
  child: Container(
    height: 120,
    width: 120,
    decoration: BoxDecoration(
      color: isSelected ? AppColors.darkBlue : AppColors.mediumBlue,
      borderRadius: BorderRadius.circular(70),
    ),
    child: Center(
      child: Text(
        label,
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
          color: isSelected ? AppColors.white : AppColors.black,
          fontSize: 28, 
        ),
        textAlign: TextAlign.center,
      ),
    ),
  ),
);

  }
}
