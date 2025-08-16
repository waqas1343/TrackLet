import 'package:flutter/material.dart';
import 'package:tracklet/core/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:tracklet/core/widgets/textfield/app_textfield.dart';
import 'package:tracklet/presentation/main_app/chat/chat_screen/widgets/chating_screen/chating_screen.dart';

class ChatScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  final List<ChatItem> chatItems = [
    ChatItem(
      name: 'Driver Majid Khan',
      message: 'Cylinder delivered at shop.',
      time: '2:58 PM',
      unreadCount: 2,
      avatarUrl: 'https://randomuser.me/api/portraits/men/1.jpg',
    ),
    ChatItem(
      name: 'Shopkeeper Ali',
      message: 'Confirm delivery count....',
      time: '3:02 PM',
      unreadCount: 0,
      avatarUrl: 'https://randomuser.me/api/portraits/men/2.jpg',
    ),
  ];

  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(name: "Bilal Ahmed", initials: "BA"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(32),
              ),
              child: AppTextFields.customTextField(
                suffixIcon: Icon(Icons.search),
                hintText: 'Search',
                controller: searchController,
                validator: (value) {
                  return null;
                },
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              child: ListView.separated(
                itemCount: chatItems.length,
                separatorBuilder: (context, index) => SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final chat = chatItems[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatingScreen(
                            name: chat.name,
                            avatarUrl: chat.avatarUrl,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundImage: NetworkImage(chat.avatarUrl),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chat.name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.done_all,
                                      size: 16,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(width: 4),
                                    Expanded(
                                      child: Text(
                                        chat.message,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                chat.time,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              if (chat.unreadCount > 0)
                                Container(
                                  margin: EdgeInsets.only(top: 6),
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      chat.unreadCount.toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatItem {
  final String name;
  final String message;
  final String time;
  final int unreadCount;
  final String avatarUrl;

  ChatItem({
    required this.name,
    required this.message,
    required this.time,
    this.unreadCount = 0,
    required this.avatarUrl,
  });
}
