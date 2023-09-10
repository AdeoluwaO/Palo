import 'package:flutter/cupertino.dart';
import './app_route_exports.dart';

class RouteGenerator {
  static const moreScreen = 'more_screen';
  static const vehicleScreen = 'vehicle_screen';
  static const walletScreen = 'wallet_screen';
  static const widthdrawFundsScreen = 'widthdraw_funds_screen';
  static const transcationScreen = 'transaction_screen';
  static const myAccountScreen = 'my_account_screen';
  static const myProfileScreen = 'my_profile_screen';
  static const editProfileScreen = 'edit_screen';
  static const myWidthdrawalScreen = 'my_widthdrawal_screen';
  static const changePasswordScreen = 'change_password_screen';
  static const newPasswordScreen = 'new_password_screen';
  static const otpScreen = 'otp_screen';

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case moreScreen:
        return CupertinoPageRoute(
          builder: (context) => const MoreScreen(),
        );
      case vehicleScreen:
        return CupertinoPageRoute(
          builder: (context) => const VehicleScreen(),
        );
      case walletScreen:
        return CupertinoPageRoute(
          builder: (context) => const WalletScreen(),
        );
      case widthdrawFundsScreen:
        return CupertinoPageRoute(
          builder: (context) => const WidthdrawFundsScreen(),
        );
      case transcationScreen:
        return CupertinoPageRoute(
          builder: (context) => const TransactionScreen(),
        );
      case myAccountScreen:
        return CupertinoPageRoute(
          builder: (context) => const MyAccountScreen(),
        );
      case myProfileScreen:
        return CupertinoPageRoute(
          builder: (context) => const MyProfileScreen(),
        );
      case editProfileScreen:
        return CupertinoPageRoute(
          builder: (context) => const EditProfileScreen(),
        );
      case myWidthdrawalScreen:
        return CupertinoPageRoute(
          builder: (context) => const MyWidthdrawalScreen(),
        );
      case changePasswordScreen:
        return CupertinoPageRoute(
          builder: (context) => const ChangePawwordScreen(),
        );
      case newPasswordScreen:
        return CupertinoPageRoute(
          builder: (context) => const NewPasswordScreen(),
        );
      case otpScreen:
        return CupertinoPageRoute(
          builder: (context) => const OtpScreen(),
        );
      default:
        throw UnimplementedError('Route not found');
    }
  }
}