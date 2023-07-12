import 'package:flutter/material.dart';

import '../../../constant.dart';
import 'TitlewithCustomUnderLine.dart';

class TitlewithMoreButton extends StatelessWidget {
  const TitlewithMoreButton({
    super.key,
    required this.press,
    required this.title,
  });
  final Function press;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitlewithCustomUnderLine(
            text: title,
          ),
          const Spacer(),
          TextButton(
            // style:  ButtonStyle(backgroundColor:),
            onPressed: press(),
            style: TextButton.styleFrom(
              foregroundColor: kPrimaryColor,
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
