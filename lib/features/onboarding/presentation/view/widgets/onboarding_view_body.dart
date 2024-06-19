import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_design/core/utils/routes.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/onboarding/presentation/view/widgets/onboarding_page_view.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 3,
          position: currentPage,
          decorator: DotsDecorator(
              activeColor: Theme.of(context).colorScheme.secondary,
              activeShape: const CircleBorder(),
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
              shape: const CircleBorder(),
              activeSize: const Size(9, 9),
              size: const Size(9, 9)),
        ),
        const SizedBox(
          height: 57,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Visibility(
              visible: currentPage != 0,
              maintainAnimation: true,
              maintainState: true,
              maintainSize: true,
              maintainSemantics: true,
              child: TextButton(
                onPressed: () {
                  currentPage -= 1;
                  pageController.animateToPage(currentPage,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.bounceIn);
                  setState(() {});
                },
                child: Text(
                  "Back",
                  style: GoogleFonts.poppins(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize:
                        TextStyles.getResponsiveFontSize(context, fontSize: 16),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (currentPage == 2) {
                  Navigator.pushReplacementNamed(context, Routes.home);
                } else {
                  currentPage += 1;
                  pageController.animateToPage(currentPage,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.bounceIn);
                }
              },
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(16)),
              child: Icon(
                Icons.arrow_forward_ios_sharp,
                size: MediaQuery.sizeOf(context).width * 0.05,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        )
      ],
    );
  }
}
