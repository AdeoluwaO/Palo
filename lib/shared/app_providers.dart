import 'package:dispatchapp/features/authentication/presentation/screens/provider/auth_provider.dart';
import 'package:dispatchapp/features/home/presentation/provider/home_provider.dart';
import 'package:dispatchapp/features/profile/provider/profile_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> appProviders = [
  ChangeNotifierProvider<HomeProvider>(
    create: (context) => HomeProvider(),
  ),
  ChangeNotifierProvider<AuthProvider>(
    create: (context) => AuthProvider(),
  ),
  ChangeNotifierProvider<ProfileProvider>(
    create: (context) => ProfileProvider(),
  ),
];
