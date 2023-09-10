import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//? this is a simle implementation of the CustomListTile
//? an exaple ue case is in the notifications screen and display screen
class SimpleListTile extends StatelessWidget {
  const SimpleListTile({
    super.key,
    this.leading,
    this.trailing,
    this.color,
    this.trailingText,
    this.onTapSwitch,
    this.switchValue = true,
  });
  final Color? color;
  final String? trailingText;
  final Widget? trailing, leading;
  final bool? switchValue;
  final Function(bool value)? onTapSwitch;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.h,
      width: 335.w,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: color ?? AppColors.lightPurple,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leading ??
              Text(
                trailingText ?? 'Add Text Here',
                style: AppTextStyle.headerLarge.copyWith(fontSize: 16),
              ),
          trailing ??
              CupertinoSwitch(
                value: switchValue!,
                onChanged: onTapSwitch,
              )
        ],
      ),
    );
  }
}
