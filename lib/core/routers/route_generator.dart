import 'package:flutter/cupertino.dart';
import './app_route_exports.dart';

class RouteGenerator {
  static const moreScreen = 'more_screen';
  static const vehicleScreen = 'vehicle_screen';
  static const walletScreen = 'wallet_screen';
  static const widthdrawFundsScreen = 'widthdraw_funds_screen';

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
      default:
        throw UnimplementedError('Route not found');
    }
  }
}
