import 'package:flutter/material.dart';
import 'package:plantapp/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'comp/body.dart';
import 'comp/my_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/menu.svg"),
      ),
    );
  }
}
