import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoChatWidget extends StatelessWidget {
  const NoChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(AppConstants.noVisisbilityIcon),
        const Text(
          'Nothing to see yet',
          style: AppTextStyle.headerMedium,
        ),
        const Text(
          'your chats will appear here',
          style: AppTextStyle.bodyMedium,
        )
      ],
    );
  }
}
