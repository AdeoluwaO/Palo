import 'package:dispatchapp/shared/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      //? build a custom scaffold for this screen
      //? it will have a column in side the column the
      //? appbar listview (chat scrolling)
      //? lastly whee the text input will be
      titleText: 'Chats Deails',

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: const [],
      ),
    );
  }
}
