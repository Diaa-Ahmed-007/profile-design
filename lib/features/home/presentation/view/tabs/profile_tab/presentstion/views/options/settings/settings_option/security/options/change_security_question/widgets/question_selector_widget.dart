import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/text_styles.dart';

class QuestionSelectorWidget extends StatefulWidget {
  const QuestionSelectorWidget({super.key});

  @override
  State<QuestionSelectorWidget> createState() => _QuestionSelectorWidgetState();
}

class _QuestionSelectorWidgetState extends State<QuestionSelectorWidget> {
  final List<String> stringList = const [
    "In what city were you born?",
    "What is the name of your favorite pet?",
    "What is your mother's maiden name?",
    "What high school did you attend?",
    "What was the name of your elementary school?"
        "What was the make of your first car?",
    "What was your favorite food as a child?",
  ];
  late String _currentSelectedValue;
  @override
  void initState() {
    _currentSelectedValue = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return InputDecorator(
          decoration: InputDecoration(
            errorStyle:
                const TextStyle(color: Colors.redAccent, fontSize: 16.0),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onSecondary,
                width: 1,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onSecondary,
                width: 1,
              ),
            ),
          ),
          isEmpty: _currentSelectedValue == '',
          child: PopupMenuButton<String>(
            color: Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15 )),
            position: PopupMenuPosition.under,
            onSelected: (value) {
              setState(() {
                _currentSelectedValue = value;
                state.didChange(value);
              });
            },
            itemBuilder: (BuildContext context) {
              return stringList.map((String value) {
                return PopupMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Text(
                    _currentSelectedValue == ""
                        ? 'Select Your Security Question'
                        : _currentSelectedValue,
                    overflow: TextOverflow.clip,
                    style: TextStyles.settingLabels.copyWith(
                        color: const Color(0xff6E838F),
                        fontSize: 10 ,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        );
      },
    );
  }
}
