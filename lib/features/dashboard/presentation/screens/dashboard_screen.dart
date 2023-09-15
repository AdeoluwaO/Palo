import 'package:dispatchapp/features/chat/presentation/screens/chat_screen.dart';
import 'package:dispatchapp/features/more/presentation/screens/more_screen.dart';
import 'package:dispatchapp/features/orders/presentation/screens/orders_screen.dart';
import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _page = 0;
  void _onTapItem(int index) {
    setState(() => _page = index);
  }

  List<Widget> pages = const [
    Placeholder(),
    OrdersScreen(),
    ChatScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.darkRed,
          unselectedItemColor: AppColors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: _page,
          onTap: _onTapItem,
          showUnselectedLabels: true,
          selectedIconTheme: const IconThemeData(color: AppColors.darkRed),
          unselectedIconTheme: const IconThemeData(color: AppColors.grey),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.inventory_2_outlined), label: 'Orders'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_outline,
                ),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                ),
                label: 'More'),
          ]),
    );
  }
}
