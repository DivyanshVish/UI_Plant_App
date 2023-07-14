import 'package:flutter/material.dart';
import 'package:plantapp/comp/FeaturePlantsCard.dart';
import 'package:plantapp/comp/Recommended_Plant.dart';
import 'package:plantapp/comp/TitlewithMoreBtn.dart';

import 'HeaderwithSearchBox.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    /* --------- It will provide us total height and width of our screen --------- */

    Size size = MediaQuery.of(context).size;

/* -------------------- This is used to Scroll the screen ------------------- */

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderwithSearchBox(size: size),
          TitlewithMoreButton(
            title: "Recommended",
            press: () {},
          ),
          /* --------------------- It will cover 40% of our total width --------------------- */
          const Recommended_Plant(),
          TitlewithMoreButton(press: () {}, title: "Feature Plants"),
          const FeaturePlants(),
          const SizedBox(),
        ],
      ),
    );
  }
}
