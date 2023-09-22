import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String phoneNumber = '';
  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneNumeberController =
        TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return AppScaffold(
        showBackButton: true,
        titleText: 'Log in to your account',
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    AppPhoneNumberInputField(
                      controller: phoneNumeberController,
                      onInputChanged: (value) {
                        setState(() => phoneNumber = value.toString());
                      },
                    ),
                    const Spacing.mediumHeight(),
                    AppTextField(
                      hintText: 'Password',
                      controller: passwordController,
                      onChange: (String value) {},
                      suffixIcon: const Icon(Icons.visibility_outlined),
                      obscureText: true,
                    ),
                    const Spacing.mediumHeight(),
                    AppButton(
                        title: "Having difficulty logging in?",
                        titleStyle: AppTextStyle.bodySmall.copyWith(
                            fontSize: 14, color: AppColors.primaryColor),
                        onTap: () {})
                  ],
                ),
              ),
              AppButton(
                  title: 'Login',
                  color: AppColors.darkRed,
                  onTap: () {
                    Navigator.pushNamed(context, RouteGenerator.navBar);
                  }),
              const Spacing.mediumHeight(),
            ],
          ),
        ));
  }
}
