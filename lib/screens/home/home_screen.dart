import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planets/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Builder Method for the appBar
    AppBar buildAppBar() {
      return AppBar(
        backgroundColor: const Color(0xFF0C9869),
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {},
        ),
      );
    }

    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}
