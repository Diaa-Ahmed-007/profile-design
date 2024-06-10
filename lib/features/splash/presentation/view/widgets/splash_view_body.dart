import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_design/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.assetsImagesSplashLogo),
          Text(
            'HEDG',
            style: GoogleFonts.outfit(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 36.sp,
                fontWeight: FontWeight.w800),
          ),
          Text(
            'INVEST IN YOUR MONEY',
            style: TextStyle(
                color: const Color(0xff1B506F),
                fontSize: 9.sp,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
