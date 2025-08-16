import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracklet/logic/controllers/bottom_nav_bar_controller/bottom_nav_bar_controller.dart';
import 'package:tracklet/presentation/main_app/orders/orders.dart';
import 'package:tracklet/presentation/main_app/request/all_request.dart';
import 'package:tracklet/presentation/main_app/home/home_screen.dart';
import 'package:tracklet/presentation/main_app/scan/scan.dart';
import 'package:tracklet/presentation/main_app/stock/stock.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  final List<Widget> pages = const [
    HomeScreen(),
    AllRequest(),
    Scan(),
    Orders(),
    Stock(),
  ];

  @override
  Widget build(BuildContext context) {
    final navProvider = context.watch<BottomNavProvider>();

    return Scaffold(
      body: pages[navProvider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: navProvider.currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color(0xFFA1887F),
        onTap: (index) => navProvider.changeIndex(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: "Request",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: "Scan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: "Stock",
          ),
        ],
      ),
    );
  }
}
