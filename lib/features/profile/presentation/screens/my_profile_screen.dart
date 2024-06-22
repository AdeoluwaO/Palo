import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/core/store/profile_store/store_profile.dart';
import 'package:dispatchapp/features/profile/provider/profile_provider.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  void initState() {
    super.initState();
    final profileProvider =
        Provider.of<ProfileProvider>(context, listen: false);
    (() async {
      final storeddId = await ProfileStore.getStoredUserId();
      await profileProvider.getUser(id: storeddId);
      await ProfileStore.storeUser(
          profile: profileProvider.profileResp?.profile);
    })();
  }

  @override
  Widget build(BuildContext context) {
    final response = context.watch<ProfileProvider>();
    final loading = response.loading;
    final profile = response.profile;
    const email = 'odejobipaul10@gmail.com';
    const phone = '09077826377';
    return AppScaffold(
        titleText: 'My Profile',
        showBackButton: true,
        body: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 60,
                foregroundImage: NetworkImage(profile?.avatar ?? ''),
              ),
              const Spacing.mediumHeight(),
              AccountInfoContainer(
                  width: double.infinity, title: profile?.firstName ?? ''),
              const Spacing.mediumHeight(),
              AccountInfoContainer(
                  width: double.infinity, title: profile?.lastName ?? ''),
              const Spacing.mediumHeight(),
              AccountInfoContainer(
                  width: double.infinity, title: profile?.email ?? ''),
              const Spacing.mediumHeight(),
              AccountInfoContainer(
                width: double.infinity,
                title: phone,
                onTap: () async {
                  final Uri launchUri = Uri(scheme: 'tel', path: phone);
                  await launchUrl(launchUri);
                },
              ),
              const Spacing.mediumHeight(),
              AccountInfoContainer(
                width: double.infinity,
                title: email,
                onTap: () async {
                  final Uri emailLaunchUri = Uri(scheme: 'mailto', path: email);
                  await launchUrl(emailLaunchUri);
                  print('object');
                },
              ),
              const Spacing.mediumHeight(),
              if (loading)
                const AppLoadingScreen(
                  message: 'Loading profile...',
                ),
              const Spacer(),
              AppButton(
                  color: AppColors.darkRed,
                  title: 'Edit profile',
                  // width: 240.w,
                  onTap: () {
                    Navigator.pushNamed(
                        context, RouteGenerator.editProfileScreen);
                  }),
              const Spacing.mediumHeight(),
            ],
          ),
        ));
  }
}
