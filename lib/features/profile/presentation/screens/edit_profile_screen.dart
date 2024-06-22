import 'package:dispatchapp/core/domain/home/index.dart';
import 'package:dispatchapp/core/store/index.dart';
import 'package:dispatchapp/core/utils/app_validators.dart';
import 'package:dispatchapp/features/profile/provider/profile_provider.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:dispatchapp/shared/widgets/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController emailFieldController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final provider = Provider.of<ProfileProvider>(context, listen: false);
    final profile = provider.profile;
    firstNameController.text = profile?.firstName ?? '';
    lastNameController.text = profile?.lastName ?? '';
    emailFieldController.text = profile?.email ?? '';
    profilePhoto = profile?.avatar ?? '';
  }

  String? profilePhoto;
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ProfileProvider>();
    final profile = provider.profile;

    return AppScaffold(
      titleText: 'My Profile',
      showBackButton: true,
      body: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacing.mediumHeight(),
            Row(
              children: [
                CircleAvatar(
                  radius: 60,
                  foregroundImage: NetworkImage(profilePhoto!),
                ),
                const Spacing.mediumWidth(),
                const Text('Tap to change')
              ],
            ),
            const Spacing.mediumHeight(),
            AppTextField(
              controller: firstNameController,
              hintText: 'First Name',
              validateFunction: AppValidators.notEmpty(),
            ),
            const Spacing.mediumHeight(),
            AppTextField(
              controller: lastNameController,
              hintText: 'Last Name',
              validateFunction: AppValidators.notEmpty(),
            ),
            const Spacing.mediumHeight(),
            AppTextField(
              controller: emailFieldController,
              hintText: 'Email',
              validateFunction: AppValidators.email(),
            ),
            const Spacer(),
            AppButton(
                title: 'Update profile',
                color: const Color.fromRGBO(170, 0, 23, 1),
                onTap: () async {
                  final editedUseProfile = Profile(
                    avatar: profilePhoto,
                    email: emailFieldController.text,
                    firstName: firstNameController.text,
                    lastName: lastNameController.text,
                  );
                  provider.updateUserProfile(profile: editedUseProfile);
                  await ProfileStore.updateUserProfile(
                      profile: editedUseProfile);
                  showAppSnackbar(
                      context: context, message: 'Profile updated!');
                  Navigator.pop(context);
                }),
            const Spacing.mediumHeight(),
          ],
        ),
      ),
    );
  }
}
