import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp/Screens/Home/Component/TitlewithCustomUnderLine.dart';

import '../../../constant.dart';
import 'HeaderwithSearchBox.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

/* -------------------- This is used to Scroll the screen ------------------- */

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderwithSearchBox(size: size),
          Row(
            children: [
              const TitlewithCustomUnderLine(
                text: "Recommend",
              ),
              TextButton(
                // style:  ButtonStyle(backgroundColor:),
                onPressed: () {},
                child: const Text(
                  "More",
                  style: TextStyle(color: kPrimaryColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
