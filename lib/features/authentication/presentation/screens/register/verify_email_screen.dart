import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  String email = '';
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    return AppScaffold(
        showBackButton: true,
        titleText: 'What’s your email?',
        body: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Text('We will be sending more information here',
                      style: AppTextStyle.bodySmall.copyWith(fontSize: 14)),
                  const Spacing.mediumHeight(),
                  AppTextField(
                    hintText: 'Email',
                    // controller: emailController,
                    onChange: (p0) {
                      setState(() => email = p0);
                    },
                  )
                ],
              )),
              Align(
                alignment: Alignment.bottomRight,
                child: AppButton(
                    title: 'Next',
                    color: email.isNotEmpty
                        ? AppColors.darkRed
                        : AppColors.darkRed.withOpacity(0.3),
                    width: 109.w,
                    suffixIcon: const Icon(
                      Icons.chevron_right,
                      color: AppColors.white,
                      size: 20,
                    ),
                    onTap: () {
                      if (email.isNotEmpty) {
                        Navigator.pushNamed(
                            context, RouteGenerator.verifyEmailOtpScreen,
                            arguments: email);
                      }
                    }),
              )
            ],
          ),
        ));
  }
}
