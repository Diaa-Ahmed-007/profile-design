import 'package:flutter/material.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/widgets/buttons_lists.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/widgets/option_sections.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/widgets/profile_details_widget.dart';

class ProfileTapView extends StatelessWidget {
  const ProfileTapView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const ProfileDetailsWidget(
          isEmailVisable: true, isMoreIconVisable: false,
        ),
        OptionSections(buttonsList: ButtonsLists.buttonsList1),
        OptionSections(buttonsList: ButtonsLists.buttonsList2),
        OptionSections(buttonsList: ButtonsLists.buttonsList3),
      ],
    );
  }
}
