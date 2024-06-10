import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/assets.dart';
import 'package:profile_design/features/onboarding/presentation/view/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItem(
          imagePath: Assets.assetsImagesOnBoarding1,
          title: "Shape Your Financial Future",
          description:
              "invest your money By Starting With\nHEDG, and secure financial freedom",
          mainAxisAlignment: MainAxisAlignment.end,
          isVisible: true,
        ),
        PageViewItem(
          imagePath: Assets.assetsImagesOnBoarding2,
          title: "Track Your Investments",
          description: "see your return on investments in the\nselected plans",
          mainAxisAlignment: MainAxisAlignment.center,
          isVisible: true,
        ),
        PageViewItem(
          imagePath: Assets.assetsImagesOnBoarding3,
          title: "Calculate Before Investing",
          description:
              "calculate your potential growth to\nchoose the perfect option for you ",
          mainAxisAlignment: MainAxisAlignment.start,
          isVisible: false,
        ),
      ],
    );
  }
}
