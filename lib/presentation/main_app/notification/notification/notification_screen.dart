import 'package:flutter/material.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';

class NotificationItem {
  final String id;
  final String shop;
  final String message;
  final String time;

  NotificationItem({
    required this.id,
    required this.shop,
    required this.message,
    required this.time,
  });
}

class NotificationScreen extends StatelessWidget {
  final List<NotificationItem> notifications = [
    NotificationItem(
      id: 'S1',
      shop: 'Shop 01',
      message: 'New stock Request',
      time: '24 mins ago',
    ),
    NotificationItem(
      id: 'S2',
      shop: 'Shop 02',
      message: 'Inventory check',
      time: '1 hour ago',
    ),
    NotificationItem(
      id: 'S3',
      shop: 'Shop 03',
      message: 'Sale promotion',
      time: '2 hours ago',
    ),
    NotificationItem(
      id: 'S4',
      shop: 'Shop 04',
      message: 'Restock notification',
      time: '3 hours ago',
    ),
    NotificationItem(
      id: 'S5',
      shop: 'Shop 05',
      message: 'Order update',
      time: '4 hours ago',
    ),
    NotificationItem(
      id: 'S6',
      shop: 'Shop 06',
      message: 'New arrival alert',
      time: '5 hours ago',
    ),
    NotificationItem(
      id: 'S7',
      shop: 'Shop 07',
      message: 'Feedback request',
      time: '6 hours ago',
    ),
  ];

  NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color darkBlue = Color(0xFF112D57);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: CustomText(
          text: "Notification",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: notifications.length,
        separatorBuilder: (context, index) => SizedBox(height: 8),
        itemBuilder: (context, index) {
          final item = notifications[index];
          return Container(
            decoration: BoxDecoration(
              color: index < 2 ? Colors.grey.shade200 : Colors.transparent,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: darkBlue,
                  radius: 20,
                  child: Text(
                    item.id,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.shop,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        item.message,
                        style: TextStyle(color: Colors.grey[600], fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.done_all, size: 16, color: darkBlue),
                    SizedBox(height: 20),
                    Text(
                      item.time,
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
