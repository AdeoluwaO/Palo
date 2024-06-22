import 'package:dispatchapp/core/domain/authentication/model.dart';
import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/core/store/index.dart';
import 'package:dispatchapp/core/utils/app_validators.dart';
import 'package:dispatchapp/features/authentication/presentation/screens/provider/auth_provider.dart';
import 'package:dispatchapp/features/authentication/presentation/widgets/column_text.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailFieldController = TextEditingController(text: 'eve.holt@reqres.in');
  TextEditingController passwordController = TextEditingController(text: 'cityslicka');
  String email = '';
  String password = '';
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    final signup = context.watch<AuthProvider>();
    final isLoading = signup.loading;
    print("IS LOADING $isLoading");
    return AppScaffold(
        showBackButton: true,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: "Welcome to ",
                  children: [
                    TextSpan(
                        text: "Palo",
                        style: AppTextStyle.headerLarge
                            .copyWith(fontSize: 24, color: AppColors.darkRed)),
                  ],
                ),
                style: AppTextStyle.headerLarge
                    .copyWith(fontSize: 24, color: AppColors.black),
              ),
              const Spacing.mediumHeight(),
              AppTextField(
                label: 'Email:',
                controller: emailFieldController,
                hintText: 'johnddoe@email.com',
                enabled: !isLoading,
                validateFunction: AppValidators.email(),
                onChange: (value) {
                  setState(() => email = value.toString());
                },
              ),
              const Spacing.mediumHeight(),
              AppTextField(
                label: 'Password:',
                hintText: 'password',
                enabled: !isLoading,
                controller: passwordController,
                obscureText: obscureText,
                suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    child: Icon(obscureText
                        ? Icons.lock_outline_rounded
                        : Icons.lock_open_rounded)),
                validateFunction: AppValidators.password(),
                onChange: (value) {
                  setState(() => password = value.toString());
                },
              ),
              
            if(isLoading)
            const AppLoadingScreen(message: "Creating account..."),
            
              const Spacer(),
              AppButton(
                  title: 'Create account',
              
                  color: (emailFieldController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty)
                      ? AppColors.darkRed
                      : AppColors.darkRed.withOpacity(0.2),
                  onTap: isLoading ? () {}: () async {
                    print("TEXT FIELDDS ${emailFieldController.text} PASS ${passwordController.text}");
                   await signup.createAccount(
                        signupData: AuthParams(
                      email: emailFieldController.text,
                      password: passwordController.text,
                    ));
                    if(signup.signupResp != null) {
                      final resp = signup.signupResp;
                      ProfileStore.storeUserId(id: resp?.id);
                     Navigator.pushNamed(context, RouteGenerator.navBar);
                    }
                  }),
              const Spacing.mediumHeight(),
            ],
          ),
        ));
  }
}
