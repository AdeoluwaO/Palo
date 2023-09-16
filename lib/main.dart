
import 'package:dispatchapp/core/routers/app_route_exports.dart';
import 'package:dispatchapp/features/add_vehicle_individual/presentation/screens/add_your_vehicle.dart';
import 'package:dispatchapp/login_screen.dart';
import 'package:dispatchapp/shared/app_providers.dart';
import 'package:dispatchapp/shared/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

import 'core/routers/route_generator.dart';
import 'features/more/presentation/screens/more_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  runApp(MultiProvider(
    providers: appProviders,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (BuildContext context, Widget? child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: navigatorKey,
          scrollBehavior: SBehavior(),
          title: AppStrings.appName,
          initialRoute: RouteGenerator.navBar,
          onGenerateRoute: RouteGenerator.onGenerateRoute,
          home: const Nav(),
      ),
    );
  }
}