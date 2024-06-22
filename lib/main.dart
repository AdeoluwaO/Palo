import 'package:dispatchapp/core/routers/app_route_exports.dart';
import 'package:dispatchapp/core/store/local_storage.dart';
import 'package:dispatchapp/core/store/profile_store/store_profile.dart';
import 'package:dispatchapp/features/onboarding/presentation/screen/splash_screen.dart';
import 'package:dispatchapp/shared/app_providers.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

import 'core/routers/route_generator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage().initializeLocalStorage();
  // await ProfileStore.isLoggedIn();

  // await initialize();
  runApp(MultiProvider(
    providers: appProviders,
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget? home;
  @override
  void initState() {
    super.initState();
    (() async {
   final isLoggedIn = await ProfileStore.isLoggedIn();
  isLoggedIn ? home= const Nav() : home = const OnboardingScreen();
    })();
  }

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
        theme: ThemeData(
          highlightColor: AppColors.transparent,
          splashColor: AppColors.transparent,
          splashFactory: NoSplash.splashFactory,
          buttonTheme: const ButtonThemeData(
            highlightColor: AppColors.transparent,
            splashColor: AppColors.transparent,
          ),
          textButtonTheme: const TextButtonThemeData(
              style: ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(AppColors.transparent),
                  splashFactory: NoSplash.splashFactory)),
          iconButtonTheme: const IconButtonThemeData(
              style: ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(AppColors.transparent),
                  splashFactory: NoSplash.splashFactory)),
          bottomSheetTheme: const BottomSheetThemeData(
              backgroundColor: AppColors.transparent),
        ),
        title: AppStrings.appName,
        onGenerateRoute: RouteGenerator.onGenerateRoute,
        home:home,
      ),
    );
  }
}
