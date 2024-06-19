import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_design/core/utils/assets.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/explore_tab/presentstion/views/explore_tab_view.dart';
import 'package:profile_design/features/home/presentation/view/tabs/home_tab/presentstion/views/home_tab_view.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/profile_tab_view.dart';
import 'package:profile_design/features/home/presentation/view/tabs/wallet_tab/presentstion/views/wallet_tab_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<TabItem> items = [
    const TabItem(
      icon: Icons.home,
      title: 'Home',
    ),
    const TabItem(
      icon: Icons.wallet_rounded,
      title: 'Wallet',
    ),
    const TabItem(
      icon: Icons.explore_rounded,
      title: 'Explore',
    ),
    const TabItem(
      icon: Icons.person,
      title: 'profile',
    ),
  ];
  List<Widget> tabs = [
    const HomeTabView(),
    const WalletTabView(),
    const ExploreTabView(),
    const ProfileTapView(),
  ];
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    TextStyles.context = context;
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      //-------nav bar
      bottomNavigationBar: BottomBarFloating(
        items: items,
        backgroundColor: Theme.of(context).colorScheme.primary,
        color: const Color(0xffD1DCE2),
        colorSelected: Theme.of(context).colorScheme.onPrimary,
        indexSelected: navIndex,
        paddingVertical: MediaQuery.sizeOf(context).height * 0.025,
        onTap: (int index) => setState(() {
          navIndex = index;
        }),
        animated: true,
      ),
      //-------app bar
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.assetsImagesAppBarLogo,
                height: 50,
              ),
              const SizedBox(
                width: 3,
              ),
              Column(
                children: [
                  Text(
                    'HEDG',
                    style: GoogleFonts.outfit(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                  const Text(
                    'INVEST IN YOUR MONEY',
                    style: TextStyle(
                        color: Color(0xff1B506F),
                        fontSize: 6,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: Theme.of(context).colorScheme.onPrimary,
            size: 22,
          ),
          const SizedBox(
            width: 20,
          )
        ],
        toolbarHeight: 70,
      ),
      //-------body
      body: tabs[navIndex],
    );
  }
}
