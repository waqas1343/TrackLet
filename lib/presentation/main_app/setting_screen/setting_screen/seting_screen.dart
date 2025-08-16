import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/core/widgets/custom_app_bar/custom_app_bar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(name: "Bilal Ahmed", initials: "BA"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            SizedBox(height: 10),
            Text(
              'Setting',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: AppColors.darkBlue,
              ),
            ),
            SizedBox(height: 16),
            ...[
              "Edit Info",
              "Notification",
              "Alert",
              "Update",
              "Change Password",
            ].map((title) => SettingButton(title: title)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Language',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkBlue,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Eng',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.darkBlue,
                      ),
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
            
                    Text(
                      'Urdu',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.darkBlue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Legal Notice',  style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.darkBlue,
                      ),),
                Text('Privacy Policy',  style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.darkBlue,
                      ),),
              ],
            ),
            SizedBox(height: 40),
            Container(
              height: 52,
              decoration: BoxDecoration(
                color: Color(0xFF112D57),
                borderRadius: BorderRadius.circular(32),
              ),
              child: TextButton.icon(
                icon: Icon(Icons.logout, color: Colors.white),
                label: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  shape: StadiumBorder(),
                ),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}

class SettingButton extends StatelessWidget {
  final String title;
  const SettingButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
        color: Colors.white,
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey[700],
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        onTap: () {},
      ),
    );
  }
}
