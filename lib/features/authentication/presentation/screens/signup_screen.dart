import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/features/authentication/presentation/widgets/column_text.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController phoneNumeberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        showBackButton: true,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const AuthColumnText(
                      title: 'What’s your number?',
                      subtitle: 'We will send a code to verify your phone',
                    ),
                    const Spacing.mediumHeight(),
                    // AppTextField(
                    //   hintText: 'Phone number',
                    //   controller: phoneNumeberController,
                    //   onChange: (String value) {},
                    // ),
                    AppPhoneNumberInputField(
                      onInputChanged: (value) {},
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: AppButton(
                    title: 'Next',
                    width: 109.w,
                    color: AppColors.darkRed.withOpacity(
                        phoneNumeberController.text.isNotEmpty ? 1 : 0.2),
                    suffixIcon: const Icon(
                      Icons.chevron_right,
                      size: 20,
                      color: AppColors.white,
                    ),
                    onTap: () {
                      if (phoneNumeberController.text.isNotEmpty) {
                        Navigator.pushNamed(context, RouteGenerator.otpScreen);
                      }
                    }),
              ),
              const Spacing.mediumHeight(),
            ],
          ),
        ));
  }
}
