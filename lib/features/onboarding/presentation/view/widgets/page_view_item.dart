import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_design/core/utils/routes.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.mainAxisAlignment,
    required this.isVisible,
  });
  final String imagePath;
  final String title;
  final String description;
  final MainAxisAlignment mainAxisAlignment;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Visibility(
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          maintainSemantics: true,
          visible: isVisible,
          child: Padding(
            padding: EdgeInsets.only(right: 10.w, top: 40.h),
            child: Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.home);
                },
                child: Text(
                  "skip",
                  style: GoogleFonts.poppins(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: MainAxisSize.max,
          children: [SvgPicture.asset(imagePath)],
        ),
        SizedBox(
          height: 76.h,
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 18.h,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff6E838F)),
        ),
      ],
    );
  }
}
