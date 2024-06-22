import 'package:dispatchapp/core/domain/authentication/model.dart';
import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/core/store/profile_store/store_profile.dart';
import 'package:dispatchapp/core/utils/app_validators.dart';
import 'package:dispatchapp/features/authentication/presentation/screens/provider/auth_provider.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool obscureText = true;

  TextEditingController emailFieldController =
      TextEditingController(text: 'eve.holt@reqres.in');
  TextEditingController passwordController =
      TextEditingController(text: 'cityslicka');

  @override
  Widget build(BuildContext context) {
    final login = context.watch<AuthProvider>();
    final isLoading = login.loading;
    print("LOGIN ASTTTA S ${login.loginReso?.token}");
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const Spacing.bigHeight(),
                  // Center(child: SvgPicture.asset(AppImages.berrystampLogo)),
                  Spacing.height(60.h),
                  Center(child: SvgPicture.asset(AppImages.onboardingIcon)),
                  Spacing.height(40.h),
                  Text(
                    'Ride, Deliver, Earn.',
                    style: AppTextStyle.headerLarge
                        .copyWith(color: AppColors.black, fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                  const Spacing.mediumHeight(),
                  Text.rich(
                    TextSpan(
                      text:
                          'Start maximizing your earning potential\ntoday with',
                      children: [
                        TextSpan(
                          text: ' Palo Flutter',
                          style: AppTextStyle.bodyMediumX
                              .copyWith(color: AppColors.darkRed),
                        ),
                      ],
                    ),
                    style: AppTextStyle.bodyMediumX,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            if (isLoading) const AppLoadingScreen(message: "Loggin..."),
            AppButton(
                title: 'New user Sign Up',
                color: AppColors.darkRed,
                onTap: () {
                  Permission.location.request();
                  Navigator.pushNamed(context, RouteGenerator.signupScreen);
                }),
            const Spacing.mediumHeight(),
            AppButton(
                title: 'Log In',
                titleStyle: AppTextStyle.bodyMediumX.copyWith(
                  color: AppColors.darkRed,
                ),
                color: AppColors.purple200,
                onTap: () async {
                  AppShowBottomSheet.appshowModalBottomsheet(
                      context: context,
                      title: 'Login',
                      children: [
                        AppTextField(
                          hintText: 'johnddoe@email.com',
                          controller: emailFieldController,
                          validateFunction: AppValidators.email(),
                          onChange: (value) {
                            // setState(() => email = value.toString());
                          },
                        ),
                        const Spacing.mediumHeight(),
                        AppTextField(
                          hintText: 'password',
                          controller: passwordController,
                          obscureText: obscureText,
                          suffixIcon: GestureDetector(
                              onTap: () {
                                print("object");
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              child: Icon(obscureText
                                  ? Icons.lock_outline_rounded
                                  : Icons.lock_open_rounded)),
                          validateFunction: AppValidators.password(),
                          onChange: (value) {
                            // setState(() => email = value.toString());
                          },
                        ),
                        const Spacing.mediumHeight(),
                        AppButton(
                            title: 'Login',
                            color: AppColors.darkRed,
                            onTap: () async {
                              Navigator.pop(context);
                              print(
                                  "TEXT FIELDDS ${emailFieldController.text} PASS ${passwordController.text}");
                              await login.login(
                                  loginData: AuthParams(
                                email: emailFieldController.text,
                                password: passwordController.text,
                              ));
                              if (login.loginReso != null) {
                                final resp = login.loginReso;
                                print("RESPONSE FRO NUULL CGECH ${resp?.toJson()}");
                                //RESREQ API DOES NOT PROVIDE ID ON LOGIN
                                await ProfileStore.storeUserId(id: 1);
                                Navigator.pushNamed(
                                    context, RouteGenerator.navBar);
                              }
                            }),
                      ]);
                })
          ],
        ),
      ),
    );
  }
}
