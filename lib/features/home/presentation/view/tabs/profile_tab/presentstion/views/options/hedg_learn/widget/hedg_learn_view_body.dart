import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/cutom_profile_wide_button.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/hedg_learn/widget/custom_book_tima_widget.dart';

class HedgLearnViewBody extends StatelessWidget {
  const HedgLearnViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            "Book Your Expert Session",
            style: TextStyles.titles,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Our team of experts is here to advise you on how to get the best value for your money. Book a free session now with our experts.",
            style: TextStyles.settingLabels.copyWith(
                color: const Color(0xff808DB5),
                fontSize: 10,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomBookTimaWidget(
              onTap: () async {
                selectDate(context);
              },
              title: "Date",
              icon: Icons.calendar_month),
          CustomBookTimaWidget(
              onTap: () async {
                selectTime(context);
              },
              title: "Time",
              icon: Icons.watch_later),
          const Spacer(),
          CustomProfileWideButton(onpressed: () {}, label: "Book Now"),
        ],
      ),
    );
  }

  Future<void> selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            timePickerTheme: TimePickerThemeData(
              backgroundColor: Colors.white,
              hourMinuteTextColor: WidgetStateColor.resolveWith(
                  (states) => Theme.of(context).colorScheme.secondary),
              dialHandColor: Colors.green[400],
              dialBackgroundColor: Colors.grey[200],
              hourMinuteShape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                side: BorderSide(color: Colors.green[100]!, width: 4),
              ),
              hourMinuteColor: Theme.of(context).colorScheme.primary,
              dayPeriodColor:
                  WidgetStateColor.resolveWith((states) => Colors.green[400]!),
              dayPeriodTextColor:
                  WidgetStateColor.resolveWith((states) => Colors.white),
              entryModeIconColor: Colors.green[400],
              confirmButtonStyle: ElevatedButton.styleFrom(
                  enableFeedback: false,
                  foregroundColor: Theme.of(context).colorScheme.secondary),
              cancelButtonStyle: ElevatedButton.styleFrom(
                  enableFeedback: false,
                  foregroundColor: Theme.of(context).colorScheme.secondary),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != TimeOfDay.now()) {
      print('Selected time: ${picked.format(context)}');
    }
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            datePickerTheme: DatePickerThemeData(
              backgroundColor: Colors.white,
              headerBackgroundColor: Colors.green[400],
              headerForegroundColor: Colors.white,
              dayForegroundColor: WidgetStateColor.resolveWith(
                (states) {
                  if (states.contains(WidgetState.selected)) {
                    return Colors.white;
                  }
                  return Colors.green[400]!;
                },
              ),
              dayBackgroundColor: WidgetStateColor.resolveWith(
                (states) {
                  if (states.contains(WidgetState.selected)) {
                    return Colors.green;
                  }
                  return Colors.transparent;
                },
              ),
              todayBackgroundColor: WidgetStateColor.resolveWith(
                (states) {
                  if (states.contains(WidgetState.selected)) {
                    return Colors.green;
                  }
                  return Colors.transparent;
                },
              ),
              todayBorder: BorderSide(color: Colors.green[400]!, width: 2),
              todayForegroundColor: WidgetStateColor.resolveWith(
                (states) {
                  if (states.contains(WidgetState.selected)) {
                    return Colors.white;
                  }
                  return Colors.green[400]!;
                },
              ),
              rangePickerBackgroundColor: Colors.grey[200],
              rangePickerShape: CircleBorder(
                side: BorderSide(color: Colors.green[800]!, width: 1),
              ),
              confirmButtonStyle: ElevatedButton.styleFrom(
                enableFeedback: false,
                foregroundColor: Theme.of(context).colorScheme.secondary,
              ),
              cancelButtonStyle: ElevatedButton.styleFrom(
                enableFeedback: false,
                foregroundColor: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != DateTime.now()) {}
  }
}
