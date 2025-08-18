import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/core/widgets/custom_button/custom_button.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';
import 'package:tracklet/core/widgets/textfield/app_textfield.dart';

class EditInfo extends StatelessWidget {
  final TextEditingController fullName = TextEditingController();
  final TextEditingController emailAdress = TextEditingController(
    text: "romail.ahmed123@gmail.com",
  );
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController companyAdres = TextEditingController();

  EditInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Edit info",
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
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.blue.shade900,
                        child: CustomText(
                          text: "BA",
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(color: AppColors.white),
                        ),
                      ),
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.blue.shade900,
                          child: const Icon(
                            Icons.camera_alt,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  CustomText(
                    text: "Bilal Ahmed",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  CustomText(
                    text: "Admin",
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            CustomText(
              text: "Full Name",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            AppTextFields.customTextField(
              hintText: "Enter Full Name",
              controller: fullName,
              validator: (value) {
                return null;
              },
              onChanged: (value) {},
            ),

            const SizedBox(height: 16),

            CustomText(
              text: "Email Address",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            AppTextFields.customTextField(
              hintText: "Enter Email Address",
              controller: emailAdress,
              validator: (value) {
                return null;
              },
              onChanged: (value) {},
            ),

            const SizedBox(height: 16),

            CustomText(
              text: "Phone Number",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            AppTextFields.customTextField(
              hintText: "Enter Phone Number",
              controller: phoneNumber,
              validator: (value) {
                return null;
              },
              onChanged: (value) {},
            ),

            const SizedBox(height: 16),

            CustomText(
              text: "Company Address",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            AppTextFields.customTextField(
              hintText: "Enter Company Address",
              controller: companyAdres,
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
