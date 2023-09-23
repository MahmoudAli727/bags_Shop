import 'package:bag_app/views/home/components/Home_view_Body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home_view extends StatelessWidget {
  const Home_view({super.key});
  static String routeName = "/Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              color: Colors.black,
              "assets/icons/cart.svg",
            ),
          ),
        ],
      ),
      body: const Hoem_view_Body(),
    );
  }
}
