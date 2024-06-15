import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfileWideButton extends StatelessWidget {
  const CustomProfileWideButton(
      {super.key, required this.onpressed, required this.label});
  final Function() onpressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w, right: 8.w, bottom: 25.h),
      child: SizedBox(
        width: double.infinity,
        height: 50.h,
        child: ElevatedButton(
            onPressed: onpressed,
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r))),
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 16.sp,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w500),
            )),
      ),
    );
  }
}
