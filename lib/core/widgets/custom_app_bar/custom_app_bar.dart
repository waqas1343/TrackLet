import 'package:flutter/material.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/core/constants/custom_icons/custom_icons.dart';
import 'package:tracklet/presentation/main_app/chat/chat_screen/chat_screen.dart';
import 'package:tracklet/presentation/main_app/notification/notification/notification_screen.dart';
import 'package:tracklet/presentation/main_app/setting_screen/setting_screen/seting_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? name;
  final String? initials;
  final VoidCallback? onChatTap;
  final VoidCallback? onNotificationTap;

  const CustomAppBar({
    super.key,
    this.name,
    this.initials,
    this.onChatTap,
    this.onNotificationTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white,
      title: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingScreen()),
          );
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                initials ?? "",
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              name!,
              style: const TextStyle(color: Colors.black, fontSize: 14),
            ),
          ],
        ),
      ),

      actions: [
        GestureDetector(
          onTap:
              onChatTap ??
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              border: Border.all(width: 0.1),
              borderRadius: const BorderRadius.all(Radius.circular(50)),
            ),
            child: Center(
              child: Image.asset(
                AppIcons.messages,
                height: 20,
                width: 20,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          onTap:
              onNotificationTap ??
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              border: Border.all(width: 0.2),
              borderRadius: const BorderRadius.all(Radius.circular(50)),
            ),
            child: Center(
              child: Image.asset(
                AppIcons.notification,
                height: 20,
                width: 20,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
