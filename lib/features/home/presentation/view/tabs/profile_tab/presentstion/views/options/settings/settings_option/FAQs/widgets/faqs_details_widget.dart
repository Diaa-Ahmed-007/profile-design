import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/text_styles.dart';

class FaqsDetailsWidget extends StatefulWidget {
  const FaqsDetailsWidget({
    super.key,
    required this.mainTitle,
    required this.subtitile,
  });
  final String mainTitle;
  final String subtitile;
  @override
  State<FaqsDetailsWidget> createState() => _FaqsDetailsWidgetState();
}

class _FaqsDetailsWidgetState extends State<FaqsDetailsWidget> {
  late bool isOpen;
  @override
  void initState() {
    isOpen = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).colorScheme.onSecondary, width: 2),
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.primary),
        height: isOpen ? null : 90,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Text(
                      widget.mainTitle,
                      style: TextStyles.settingLabels
                          .copyWith(fontWeight: FontWeight.w900, fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                        onPressed: () async {
                          isOpen = !isOpen;
                          setState(() {});
                        },
                        icon: Icon(isOpen
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                color: Theme.of(context).colorScheme.onSecondary,
                thickness: 2,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.subtitile,
                style: TextStyles.settingLabels
                    .copyWith(fontSize: 10, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
