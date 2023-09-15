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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      // body: ,
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.darkRed,
          unselectedItemColor: AppColors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: 2,
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
