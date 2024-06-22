import 'package:flutter/cupertino.dart';
import './app_route_exports.dart';

class RouteGenerator {
  static const moreScreen = 'more_screen';
  static const myAccountScreen = 'my_account_screen';
  static const deleteAccountScreen = 'delete_account_screen';
  static const confirmDeleteAccountScreen = 'confirm_delete_account_screen';
  static const myProfileScreen = 'my_profile_screen';
  static const editProfileScreen = 'edit_screen';
  static const notificationsSettingsScreen = 'notifications_settings_screen';
  static const displayScreen = 'display_screen';
  static const addYourVehicleScreen = 'add_your_vehicle.dart';
  static const ordersScreen = 'orders_screen';
  static const noRecentOrderScreen = 'no_recent_order_screen';
  static const orderDeliveryDetailScreen = 'order_detail_screen';

  static const homeScreen = 'home_screen';
  static const acceptRejectScreen = 'accept_reject_screen';
  static const myStatsScreen = 'my_stats_screen';
  static const orderNotificationsScreen = 'order_notifications_screen';
  
  static const navBar = 'nav_bar';
  static const orderSuccessScreen = 'order_success_screen';
  static const orderCancelledScreen = 'order_cancelled_screen';
  static const orderDetailsScreen = 'order_details_screen';
  static const onboardingScreen = 'onboarding_screen';
  static const signupScreen = 'signup_screen';
  static const signupFormScreen = 'signup_form_screen';
  // static const dashboardScreen = 'dashboard_screen';

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // case moreScreen:
      //   return CupertinoPageRoute(
      //     builder: (context) => const MoreScreen(),
      //   );
      case myAccountScreen:
        return CupertinoPageRoute(
          builder: (context) => const MyAccountScreen(),
        );
      case myProfileScreen:
        return CupertinoPageRoute(
          builder: (context) => const MyProfileScreen(),
        );
      case acceptRejectScreen:
        return CupertinoPageRoute(
          builder: (context) => const AcceptRejectScreen(),
        );
      case myStatsScreen:
        return CupertinoPageRoute(
          builder: (context) => const MyStatsScreen(),
        );
      case editProfileScreen:
        return CupertinoPageRoute(
          builder: (context) => const EditProfileScreen(),
        );
      case deleteAccountScreen:
        return CupertinoPageRoute(
          builder: (context) => const DeleteAccountScreen(),
        );
      case confirmDeleteAccountScreen:
        return CupertinoPageRoute(
          builder: (context) => const ConfirmDeleteccountScreen(),
        );
      case notificationsSettingsScreen:
        return CupertinoPageRoute(
          builder: (context) => const NotificationSettingsScreen(),
        );
      case displayScreen:
        return CupertinoPageRoute(
          builder: (context) => const DisplayScreen(),
        );
      case orderNotificationsScreen:
        return CupertinoPageRoute(
          builder: (context) => const OrderNotificationsScreen(),
        );
      case ordersScreen:
        return CupertinoPageRoute(
          builder: (context) => const OrdersScreen(),
        );
      case noRecentOrderScreen:
        return CupertinoPageRoute(
          builder: (context) => const NoRecentOrderScreen(),
        );
      case orderDeliveryDetailScreen:
        return CupertinoPageRoute(
          builder: (context) => const OrderDeliveryDetailScreen(),
        );
      case orderSuccessScreen:
        return CupertinoPageRoute(
          builder: (context) => const OrderSuccessScreen(),
        );
      case orderCancelledScreen:
        return CupertinoPageRoute(
          builder: (context) => const OrderCancelledScreen(),
        );
      case orderDetailsScreen:
        return CupertinoPageRoute(
          builder: (context) => const OrderDetailsScreen(),
        );
      case onboardingScreen:
        return CupertinoPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case signupScreen:
        return CupertinoPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      case navBar:
        return CupertinoPageRoute(
          builder: (context) => const Nav(),
        );
      default:
        throw UnimplementedError('Route not found');
    }
  }
}
