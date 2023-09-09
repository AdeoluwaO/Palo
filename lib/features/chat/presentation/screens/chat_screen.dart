import 'package:dispatchapp/shared/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleText: 'Chats',
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: const [],
      ),
    );
  }
}
