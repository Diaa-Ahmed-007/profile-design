import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_design/core/utils/routes.dart';
import 'package:profile_design/core/utils/text_styles.dart';

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
            padding: const EdgeInsets.only(right: 10, top: 40),
            child: Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.home);
                },
                child: Text(
                  "Skip",
                  style: TextStyles.onBoardingLabel.copyWith(
                      fontSize: TextStyles.getResponsiveFontSize(context,
                          fontSize: 16)),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Expanded(
          flex: 10,
          child: AspectRatio(
            aspectRatio: 2,
            child: FittedBox(
              child: Row(
                mainAxisAlignment: mainAxisAlignment,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SvgPicture.asset(
                    imagePath,
                    fit: BoxFit.fill,
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 76,
        ),
        Expanded(
          child: Text(
            title,
            style: TextStyles.onBoardingLabel.copyWith(
                fontSize:
                    TextStyles.getResponsiveFontSize(context, fontSize: 18)),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyles.onBoardingSubLabel.copyWith(
                fontSize:
                    TextStyles.getResponsiveFontSize(context, fontSize: 12)),
          ),
        ),
      ],
    );
  }
}
