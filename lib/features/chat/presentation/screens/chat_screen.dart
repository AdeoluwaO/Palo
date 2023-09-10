import 'package:dispatchapp/features/chat/presentation/widgets/chat_tile_widget.dart';
import 'package:dispatchapp/features/chat/presentation/widgets/no_chat_widget.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleText: 'Chats',
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
        children: [
          ChatTile(
            image: AppImages.testProfileImage,
            title: 'Promise',
            subtitle: 'Tosin',
            onTap: () {},
          ),
          const Spacing.mediumHeight(),
          ChatTile(
            image: AppImages.testProfileImage,
            title: 'Promise',
            subtitle: 'Tosin',
            onTap: () {},
          ),
          const Spacing.mediumHeight(),
          ChatTile(
            image: AppImages.testProfileImage,
            title: 'Promise',
            subtitle: 'Tosin',
            onTap: () {},
          ),
          const Spacing.mediumHeight(),
          ChatTile(
            image: AppImages.testProfileImage,
            title: 'Promise',
            subtitle: 'Tosin',
            onTap: () {},
          ),
          const Spacing.mediumHeight(),
          ChatTile(
            image: AppImages.testProfileImage,
            title: 'Promise',
            subtitle: 'Tosin',
            onTap: () {},
          ),
          const Spacing.mediumHeight(),
        ],
      ),
    );
  }
}
