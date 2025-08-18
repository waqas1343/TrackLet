import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/core/widgets/custom_button/custom_button.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';
import 'package:tracklet/presentation/main_app/notification/notification/notification_screen.dart';
import 'package:tracklet/presentation/main_app/setting_screen/widgets/change_password/change_password.dart';
import 'package:tracklet/presentation/main_app/setting_screen/widgets/edit_info/edit_info.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: AppBar(
          title: CustomText(
            text: "Setting",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          centerTitle: true,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 30),
            CustomText(
              text: "Setting",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            SettingButton(
              title: "Edit Info",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditInfo()),
                );
              },
            ),
            SettingButton(
              title: "Notification",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
            ),
            SettingButton(title: "Alert", onTap: () {}),
            SettingButton(title: "Update", onTap: () {}),
            SettingButton(
              title: "Change Password",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangePassword()),
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  text: "Language",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Row(
                  children: [
                    CustomText(
                      text: "Eng",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Transform.scale(
                      scale: 0.8,
                      child: Switch(
                        activeTrackColor: AppColors.darkBlue,
                        activeColor: AppColors.darkBlue,
                        value: true,
                        onChanged: (val) {},
                      ),
                    ),
                    CustomText(
                      text: "Urdu",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Legal Notice",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                CustomText(
                  text: ",Privacy Policy",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(height: 40),
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

class SettingButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const SettingButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
        color: Colors.white,
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey[700],
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        onTap: onTap,
      ),
    );
  }
}
