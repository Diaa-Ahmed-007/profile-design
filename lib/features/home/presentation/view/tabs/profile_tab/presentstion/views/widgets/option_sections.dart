import 'package:flutter/material.dart';

class OptionSections extends StatelessWidget {
  const OptionSections({super.key, required this.buttonsList});
  final List<Widget> buttonsList;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)
          ],
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: buttonsList,
      ),
    );
  }
}
