import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_design/core/utils/assets.dart';
import 'package:profile_design/core/utils/text_styles.dart';

class AboutUsViewBody extends StatelessWidget {
  const AboutUsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 22 ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15 ),
                color: Theme.of(context).colorScheme.primary,
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context)
                          .colorScheme
                          .onSecondary
                           .withOpacity(0.4),
                      blurRadius: 15 ,
                      blurStyle: BlurStyle.outer)
                ]),
            child: Column(
              children: [
                SizedBox(
                  height: 60 ,
                  width: 35 ,
                  child: SvgPicture.asset(
                    Assets.assetsImagesAboutUsHedgLogo,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 5 ,
                ),
                Text(
                  "HEDG",
                  style: TextStyles.onBoardingLabel
                      .copyWith(fontSize: 24, fontWeight: FontWeight.w800),
                ),
                const Text(
                  "INVEST IN YOUR MONEY",
                  style: TextStyle(
                      color: Color(0xff1B506F),
                      fontSize: 6,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15 ,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15 ),
              color: Theme.of(context).colorScheme.primary,
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context)
                        .colorScheme
                        .onSecondary
                         .withOpacity(0.4),
                    blurRadius: 15 ,
                    blurStyle: BlurStyle.outer)
              ],
            ),
            child: Text(
                style: TextStyles.settingLabels
                    .copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                '''We are a group of entrepreneurs, investment advisors, and tech gurus. Who wants to expose the value of investing to the public. We help you make the best value of your money, by investing your savings into the financial markets in a professional way with no hassle. Our mission is to help individuals build their own wealth by providing digital access to buy, track, and compare investment funds in a smooth way. We do care about numbers since numbers are our key measurement value of success. Saving in banks for CDs or TDs is very well known nowadays, however, the other assets are still an ambiguity to most of the public. We wish to standardize it for most individuals to get the best value of their savings by investing.'''),
          )
        ],
      ),
    );
  }
}
