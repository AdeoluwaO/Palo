import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvailabilityScreen extends StatefulWidget {
  const AvailabilityScreen({super.key});

  @override
  State<AvailabilityScreen> createState() => _AvailabilityScreenState();
}

class _AvailabilityScreenState extends State<AvailabilityScreen> {
  bool availableForOrders = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        titleText: 'Availability',
        showBackButton: true,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          physics: const BouncingScrollPhysics(),
          children: [
            const Spacing.mediumHeight(),
            SimpleListTile(
              trailingText: 'I am available for orders',
              switchValue: availableForOrders,
              onTapSwitch: (bool value) {
                setState(() {
                  availableForOrders = value;
                });
              },
            ),
          ],
        ));
  }
}
