import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/FAQs/widgets/faqs_details_widget.dart';

class FaqsViewBody extends StatelessWidget {
  const FaqsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast),
        slivers: [
          SliverToBoxAdapter(
            child: Text("Frequently Asked Questions", style: TextStyles.titles),
          ),
          const FaqsDetailsWidget(
              mainTitle:
                  "Who Is Available To Support Me When I Need One-On-One Advice?",
              subtitile:
                  "Our Team Is Here To Support You, Whether You’re Facing A Technical Problem, Making A Complicated Financial Move, Or Looking For Personalized Guidance From A Professional, When You Have A Question That Warrants Personal Advice, We Have A Team Of Certified Financial Planners™ To Support You With One-On-One Advice."),
          const FaqsDetailsWidget(
              mainTitle: "How Is Digivst Different?", subtitile: ""),
          const FaqsDetailsWidget(
              mainTitle: "Who Is Eligible To Use Digivst?", subtitile: ""),
          const FaqsDetailsWidget(
              mainTitle: "What Are Digivst’s Fees?", subtitile: ""),
          const FaqsDetailsWidget(
              mainTitle: "What Mobile Platform Does Digivst Support?",
              subtitile: ""),
          const FaqsDetailsWidget(
              mainTitle: "Is My Personal Information Safe With Digivst?",
              subtitile: ""),
          const FaqsDetailsWidget(
              mainTitle: "Can I Invest In An Individual Stock?", subtitile: ""),
          const FaqsDetailsWidget(
              mainTitle: "Can I Move My Money Out If I Want To?",
              subtitile: ""),
          const FaqsDetailsWidget(
              mainTitle: "How To Withdraw My Money?", subtitile: ""),
        ],
      ),
    );
  }
}
