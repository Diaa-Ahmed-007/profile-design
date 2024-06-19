import 'package:flutter/material.dart';

class CustomProfileWideButton extends StatelessWidget {
  const CustomProfileWideButton(
      {super.key, required this.onpressed, required this.label});
  final Function() onpressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10 , right: 10 , bottom: 25 ),
      child: SizedBox(
        width: double.infinity,
        height: 50 ,
        child: ElevatedButton(
            onPressed: onpressed,
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15 ))),
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w500),
            )),
      ),
    );
  }
}
