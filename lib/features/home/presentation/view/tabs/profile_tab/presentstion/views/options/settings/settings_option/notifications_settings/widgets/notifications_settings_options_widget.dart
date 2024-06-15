import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/notifications_settings/widgets/Custom_swich_option_button.dart';

class NotificationsSettingsOptionsWidget extends StatefulWidget {
  const NotificationsSettingsOptionsWidget(
      {super.key,
      required this.mainTitle,
      required this.subtitile1,
      required this.subtitile2,
      required this.isOn1,
      required this.isOn2});
  final String mainTitle;
  final String subtitile1;
  final String subtitile2;
  final bool isOn1;
  final bool isOn2;
  @override
  State<NotificationsSettingsOptionsWidget> createState() =>
      _NotificationsSettingsOptionsWidgetState();
}

class _NotificationsSettingsOptionsWidgetState
    extends State<NotificationsSettingsOptionsWidget> {
  late bool isOpen;
  @override
  void initState() {
    isOpen = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      padding: EdgeInsets.all(16.sp),
      margin: EdgeInsets.symmetric(vertical: 15.h),
      decoration: BoxDecoration(
          border: Border.all(
              color: Theme.of(context).colorScheme.onSecondary, width: 2),
          borderRadius: BorderRadius.circular(15.r),
          color: Theme.of(context).colorScheme.primary),
      height: isOpen ? null : 90.h,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.mainTitle,
                  style: TextStyles.settingLabels
                      .copyWith(fontWeight: FontWeight.w900),
                ),
                IconButton(
                    onPressed: () {
                      isOpen = !isOpen;
                      setState(() {});
                    },
                    icon: Icon(isOpen
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down))
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              color: Theme.of(context).colorScheme.onSecondary,
              thickness: 2,
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomSwichOptionButton(
              title: widget.subtitile1,
              isOn: widget.isOn1,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomSwichOptionButton(
              title: widget.subtitile2,
              isOn: widget.isOn2,
            ),
            SizedBox(
              height: 15.h,
            ),
          ],
        ),
      ),
    );
  }
}
