import 'package:dispatchapp/core/routers/app_route_exports.dart';
import 'package:dispatchapp/shared/constants/app_text_style.dart';
import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:dispatchapp/shared/widgets/app_image_view.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../../shared/constants/images.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

int _currentIndex = 0;
List<Widget> _children = [
  const HomeScreen(),
  const OrdersScreen(),
  const ChatScreen(),
  const MyAccountScreen()
];

class _NavState extends State<Nav> {
  @override
  void initState() {
    _children;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _children),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.darkRed,
        backgroundColor: white,
        elevation: 2.0,
        selectedLabelStyle: AppTextStyle.headerMedium.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 12
        ),
        unselectedLabelStyle: AppTextStyle.headerMedium.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 12
        ),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: tabItem,
        items: [
          BottomNavigationBarItem(
              icon: SizedBox(
                  child: AppImageView(
                svgPath: AppImages.homeIcon,
                width: 24,
                height: 24,
                color: _currentIndex == 0 ? AppColors.darkRed : null,
              )),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SizedBox(
                child: AppImageView(
                svgPath: AppImages.navOrderIcon,
                width: 24,
                height: 24,
                color: _currentIndex == 1 ? AppColors.darkRed : null,
              )),
              label: 'Orders'),
          BottomNavigationBarItem(
              icon: SizedBox(
                child: AppImageView(
                svgPath: AppImages.chatIcon,
                width: 24,
                height: 24,
                color: _currentIndex == 2 ? AppColors.darkRed : null,
              )),
              label: 'Chat'),
          BottomNavigationBarItem(
              icon: SizedBox(
                  child: AppImageView(
                svgPath: AppImages.moreIcon,
                width: 24,
                height: 24,
                color: _currentIndex == 3 ? AppColors.darkRed : null,
              )),
              label: 'More')
        ],
      ),
    );
  }

  void tabItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
