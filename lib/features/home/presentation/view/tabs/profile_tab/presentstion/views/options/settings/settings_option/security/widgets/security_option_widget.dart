import 'package:flutter/material.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/widgets/option_list.dart';

class SecurityOptionWidget extends StatelessWidget {
  const SecurityOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Column(
        children: List.generate(OptionList.options.length, (index) {
          return Column(
            children: [
              OptionList.options[index],
              if (index < OptionList.options.length - 1)
                const SizedBox(height: 20),
            ],
          );
        }),
      ),
    );
  }
}
