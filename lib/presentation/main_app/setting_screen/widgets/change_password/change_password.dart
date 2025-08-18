import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/core/widgets/custom_button/custom_button.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';
import 'package:tracklet/core/widgets/textfield/app_textfield.dart';

class ChangePassword extends StatelessWidget {
  final TextEditingController fullName = TextEditingController();
  final TextEditingController emailAdress = TextEditingController(
    text: "romail1234",
  );
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController companyAdres = TextEditingController();

  ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Change Password",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 70),
                  CustomText(
                    text: "Enter current password and set a new one.",

                    style: Theme.of(context).textTheme.displaySmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),

            CustomText(
              text: "Current Password",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            AppTextFields.customTextField(
              hintText: "Enter Current Password",
              controller: fullName,
              validator: (value) {
                return null;
              },
              onChanged: (value) {},
            ),

            const SizedBox(height: 16),

            CustomText(
              text: "Password",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            AppTextFields.customTextField(
              hintText: "romail1234",
              controller: emailAdress,
              validator: (value) {
                return null;
              },
              onChanged: (value) {},
            ),

            const SizedBox(height: 16),

            CustomText(
              text: "Confirm New Password",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            AppTextFields.customTextField(
              hintText: "Confirm New Password",
              controller: phoneNumber,
              validator: (value) {
                return null;
              },
              onChanged: (value) {},
            ),

            const SizedBox(height: 60),
            AppButtons.customElevatedButton(
              hasBorder: true,

              icon: Icons.logout_outlined,
              height: 45,
              context: context,
              label: "Logout",
              onPressed: () {},
              backgroundColor: AppColors.darkBlue,
            ),
          ],
        ),
      ),
    );
  }
}
