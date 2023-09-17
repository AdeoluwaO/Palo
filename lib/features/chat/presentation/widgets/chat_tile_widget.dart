import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
  final String image, title, subtitle;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        radius: 30,
        foregroundImage: AssetImage(image),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
