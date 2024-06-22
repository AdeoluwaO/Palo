import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/core/store/index.dart';
import 'package:dispatchapp/features/profile/provider/profile_provider.dart';
import 'package:dispatchapp/shared/constants/app_text_style.dart';
import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:dispatchapp/shared/constants/images.dart';
import 'package:dispatchapp/shared/widgets/app_button.dart';
import 'package:dispatchapp/shared/widgets/app_scaffold.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DeleteAccountScreen extends StatefulWidget {
  const DeleteAccountScreen({super.key});

  @override
  State<DeleteAccountScreen> createState() => _DeleteAccountScreenState();
}

class _DeleteAccountScreenState extends State<DeleteAccountScreen> {
   @override
  void initState() {
    super.initState();
    Provider.of<ProfileProvider>(context, listen: false);
  }
  @override
  Widget build(BuildContext context) {
    final provider = context.read<ProfileProvider>();
    final profile = provider.profile;

    return AppScaffold(
        titleText: 'Delete account',
        showBackButton: true,
        body: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    foregroundImage: NetworkImage(profile?.avatar ?? ''),
                  ),
                  const Spacing.mediumWidth(),
                  Text(
                    '${profile?.firstName} ${profile?.lastName}',
                    style: AppTextStyle.bodyMediumX
                        .copyWith(color: AppColors.black, fontSize: 14),
                  ),
                ],
              ),
              const Spacing.largeHeight(),
              Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                          text: "Palo ",
                          style: AppTextStyle.headerLarge.copyWith(
                              fontSize: 24, color: AppColors.darkRed)),
                      const TextSpan(
                          text:
                              'will delete and all your data.\nyou will no longer receive deliveries with '),
                      TextSpan(
                          text: "Palo",
                          style: AppTextStyle.headerLarge.copyWith(
                              fontSize: 24, color: AppColors.darkRed)),
                    ],
                    style: AppTextStyle.headerMedium
                        .copyWith(fontSize: 18, color: AppColors.darkGrey),
                  )),
              const Spacing.largeHeight(),
              Center(
                child: Text(
                  'This action cannot be undone',
                  style: AppTextStyle.headerLarge
                      .copyWith(fontSize: 18, color: AppColors.primaryColor),
                  textAlign: TextAlign.center,
                ),
              ),

              const Spacer(),
              AppButton(
                title: 'Delete account',
                color: AppColors.darkRed,
                onTap: () async {
                  Navigator.pushNamed(
                      context, RouteGenerator.confirmDeleteAccountScreen);
                        await ProfileStore.deleteProfile();
                },
              ),
              const Spacing.mediumHeight(),
              AppButton(
                title: 'Cancel',
                titleStyle:
                    AppTextStyle.bodyMedium.copyWith(color: AppColors.darkRed),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}
