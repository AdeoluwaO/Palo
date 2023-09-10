import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends State<NotificationSettingsScreen> {
  bool allowNotification = true;
  bool allowOffersAndUpdates = true;
  bool allowPayments = true;
  bool allowMessages = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        titleText: 'Notifications',
        showBackButton: true,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          physics: const BouncingScrollPhysics(),
          children: [
            const Spacing.mediumHeight(),
            SimpleListTile(
              trailingText: 'Allow push notifications',
              switchValue: allowNotification,
              onTapSwitch: (bool value) {
                setState(() {
                  allowNotification = value;
                });
              },
            ),
            const Spacing.mediumHeight(),
            SimpleListTile(
              trailingText: 'Offers and updates',
              switchValue: allowOffersAndUpdates,
              onTapSwitch: (bool value) {
                setState(() {
                  allowOffersAndUpdates = value;
                });
              },
            ),
            const Spacing.mediumHeight(),
            CustomListTile(
              title: 'Payment',
              subTitle: 'Upload profile photo',
              trailing: CupertinoSwitch(
                value: allowPayments,
                onChanged: (bool value) {
                  setState(() {
                    allowPayments = value;
                  });
                },
              ),
            ),
            const Spacing.mediumHeight(),
            CustomListTile(
                title: 'Messages',
                subTitle:
                    'Allow notifications so you wont miss reples\nfrom customers',
                trailing: CupertinoSwitch(
                  value: allowMessages,
                  onChanged: (bool value) {
                    setState(() {
                      allowMessages = value;
                    });
                  },
                )),
          ],
        ));
  }
}
