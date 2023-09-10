import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  bool showConfetti = true;
  bool enableDarkmode = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        titleText: 'Display',
        showBackButton: true,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          physics: const BouncingScrollPhysics(),
          children: [
            const Spacing.mediumHeight(),
            CustomListTile(
              title: 'Confetti',
              subTitle: 'Add a little fun with confetti on delivery',
              //! note!!! sized box removes the default leading icon
              leading: const SizedBox.shrink(),
              trailing: CupertinoSwitch(
                value: showConfetti,
                onChanged: (bool value) {
                  setState(() {
                    showConfetti = value;
                  });
                },
              ),
            ),
            const Spacing.mediumHeight(),
            CustomListTile(
                title: 'Enable dark mode',
                //! note!!! sized box removes the default leading icon
                leading: const SizedBox.shrink(),
                subTitle: 'Use Berrystamp with a dark interface',
                trailing: CupertinoSwitch(
                  value: enableDarkmode,
                  onChanged: (bool value) {
                    setState(() {
                      enableDarkmode = value;
                    });
                  },
                )),
          ],
        ));
  }
}
