import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          border: Border.all(
              color: Theme.of(context).colorScheme.onSecondary, width: 2),
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).colorScheme.primary),
      height: isOpen ? null : 90,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
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
            const SizedBox(
              height: 10,
            ),
            Divider(
              color: Theme.of(context).colorScheme.onSecondary,
              thickness: 2,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomSwichOptionButton(
              title: widget.subtitile1,
              isOn: widget.isOn1,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomSwichOptionButton(
              title: widget.subtitile2,
              isOn: widget.isOn2,
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
