import 'package:dispatchapp/features/add_withdrawal/provider/add_withdrawal_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> appProviders = [
  ChangeNotifierProvider<AddWithdrawalProvider>(
    create: (context) => AddWithdrawalProvider(),
  ),
];
