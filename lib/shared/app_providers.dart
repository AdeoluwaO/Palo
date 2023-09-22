import 'package:dispatchapp/features/add_vehicle_individual/presentation/provider/add_vehicle_individual_provider.dart';
import 'package:dispatchapp/features/add_withdrawal/provider/add_withdrawal_provider.dart';
import 'package:dispatchapp/features/forgot_password/presentation/provider/forgot_password_provider.dart';
import 'package:dispatchapp/features/home/presentation/provider/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> appProviders = [
  ChangeNotifierProvider<AddWithdrawalProvider>(
    create: (context) => AddWithdrawalProvider(),
  ),
  ChangeNotifierProvider<ForgotPasswordProvider>(
    create: (context) => ForgotPasswordProvider(),
  ),
  ChangeNotifierProvider<AddVehicleIndividualProvider>(
    create: (context) => AddVehicleIndividualProvider(),
  ),
  ChangeNotifierProvider<HomeProvider>(
    create: (context) => HomeProvider(),
  ),
];
