import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OptionSections extends StatelessWidget {
  const OptionSections({super.key, required this.buttonsList});
  final List<Widget> buttonsList;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      margin: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10.r)
          ],
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        children: buttonsList,
      ),
    );
  }
}
